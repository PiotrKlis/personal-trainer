import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_widget.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

import 'calendar_event.dart';
import 'calendar_provider.dart';
import 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final CalendarProvider _calendarExerciseProvider =
      GetIt.I.get<CalendarProvider>();
  Map<DateTime, bool> _tempEvents = {};
  Map<DateTime, bool> _eventsCache = {};
  late final StreamSubscription _otherBlocSubscription;
  List<UserExercise> _previousExercises = [];
  static const CALENDAR_FORMAT_IN_DAYS = 7;

  var _events = [];

  CalendarBloc(
      CalendarState initialState, CalendarExercisesBloc calendarExercisesBloc)
      : super(initialState) {
    observeExercisesDataForEventMarkerReload(calendarExercisesBloc);

    on<GetEventMarker>((event, emitter) async {
      try {
        switch (event.pageNavigation) {
          case PAGE_NAVIGATION.PAST:
            _events.add(event);
            if (_events.length == 7) {
              await emitMarkers(emitter);
            }
            break;
          case PAGE_NAVIGATION.FUTURE:
            _events.add(event);
            if (_events.length == 14) {
              _events.removeRange(0, 7);
              await emitMarkers(emitter);
            }
            break;
          case PAGE_NAVIGATION.NO_NAVIGATION:
            _events.add(event);
            if (_events.length == 7) {
              await emitMarkers(emitter);
            }
            break;
        }
      } catch (error) {
        emitter(CalendarState.error(error: error.toString()));
      }
    });

    on<ReloadEventMarkersOnPageChange>((event, emitter) async {
      emitter(CalendarState.loadEventMarkers(
          pageNavigation: event.pageNavigation, events: {}));
    });
  }

  Future<void> emitMarkers(Emitter<CalendarState> emitter) async {
    var listOfEventMaps = await Future.wait(_events.map((event) async {
      var eventMap = await _calendarExerciseProvider.getExerciseMarkerFor(
          dateTime: event.dateTime, clientId: event.clientId);
      return eventMap;
    }));
    var flattenedMap = {for (var map in listOfEventMaps) ...map};
    _eventsCache = flattenedMap;
    emitter(CalendarState.eventMarkersData(eventMarkers: flattenedMap));
  }

  bool _isPageNavigation = false;

  void observeExercisesDataForEventMarkerReload(
      CalendarExercisesBloc calendarExercisesBloc) {
    _otherBlocSubscription = calendarExercisesBloc.stream.listen((state) {
      state.whenOrNull(content: (exercises) {
        bool shouldReloadEventMarkers =
            (_previousExercises.isEmpty && exercises.isNotEmpty ||
                    _previousExercises.isNotEmpty && exercises.isEmpty) &&
                !_isPageNavigation;
        if (shouldReloadEventMarkers) {
          _previousExercises = List.of(exercises);
          clearBlocEvents();
          emit(CalendarState.loadEventMarkers(events: _eventsCache));
        }
        if (_isPageNavigation) {
          _isPageNavigation = false;
        }
      });
    });
  }

  void clearBlocEvents() {
    _events = [];
  }

  void prepareForPageChange() {
    clearBlocEvents();
    _isPageNavigation = true;
  }

  @override
  Future<void> close() {
    _otherBlocSubscription.cancel();
    return super.close();
  }
}
