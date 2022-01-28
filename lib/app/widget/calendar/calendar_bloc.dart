import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

import 'calendar_event.dart';
import 'calendar_provider.dart';
import 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final CalendarProvider _calendarExerciseProvider =
      GetIt.I.get<CalendarProvider>();
  late final StreamSubscription _otherBlocSubscription;
  Map<DateTime, bool> _eventsCache = {};
  static const CALENDAR_FORMAT_IN_DAYS = 7;

  List<GetEventMarker> _eventMarkers = [];

  CalendarBloc(
      CalendarState initialState, CalendarExercisesBloc calendarExercisesBloc)
      : super(initialState) {
    observeExercisesDataForEventMarkerReload(calendarExercisesBloc);
    on<GetEventMarker>((event, emitter) async {
      try {
        _eventMarkers.add(event);
        if (_eventMarkers.length == CALENDAR_FORMAT_IN_DAYS) {
          if (_eventMarkers.any((element) =>
              DateUtils.dateOnly(element.dateTime) ==
              DateUtils.dateOnly(event.selectedDate))) {
            await emitMarkers(emitter);
          } else {
            _eventMarkers = [];
          }
        }
      } catch (error) {
        emitter(CalendarState.error(error: error.toString()));
      }
    });

    on<ReloadEventMarkersOnPageChange>((event, emitter) async {
      emitter(CalendarState.loadEventMarkers(events: {}));
    });
  }

  Future<void> emitMarkers(Emitter<CalendarState> emitter) async {
    // Log.d("Fetching markers data $_eventMarkers");
    var listOfEventMaps = await Future.wait(_eventMarkers.map((event) async {
      return await _calendarExerciseProvider.getExerciseMarkerFor(
          dateTime: event.dateTime, clientId: event.clientId);
    }));
    var flattenedMap = {for (var map in listOfEventMaps) ...map};
    _eventsCache = flattenedMap;
    emitter(CalendarState.eventMarkersData(eventMarkers: flattenedMap));
  }

  bool _isMarkersReloadEnabled = true;
  List<UserExercise> _exercisesCache = [];

  void observeExercisesDataForEventMarkerReload(
      CalendarExercisesBloc calendarExercisesBloc) {
    _otherBlocSubscription = calendarExercisesBloc.stream.listen((state) {
      state.whenOrNull(content: (exercises) {
        var shouldCacheExercises =
            _exercisesCache.isEmpty && exercises.isNotEmpty ||
                _exercisesCache.isNotEmpty && exercises.isEmpty;
        bool shouldReloadEventMarkers =
            shouldCacheExercises && _isMarkersReloadEnabled;
        if (shouldCacheExercises) {
          _exercisesCache = List.of(exercises);
        }
        if (shouldReloadEventMarkers) {
          _eventMarkers = [];
          emit(CalendarState.loadEventMarkers(events: _eventsCache));
        }
        if (!_isMarkersReloadEnabled) {
          _isMarkersReloadEnabled = true;
        }
      });
    });
  }

  // divide in two
  void disableMarkersReloadForNextEvent() {
    _isMarkersReloadEnabled = false;
    _eventMarkers = [];
  }

  void clearExercisesCache() {
    _exercisesCache = [];
  }

  @override
  Future<void> close() {
    _otherBlocSubscription.cancel();
    return super.close();
  }
}
