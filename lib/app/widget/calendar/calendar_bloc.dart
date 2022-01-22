import 'dart:async';

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
  Map<DateTime, bool> _tempEvents = {};
  Map<DateTime, bool> _events = {};
  late final StreamSubscription _otherBlocSubscription;
  List<UserExercise> _previousExercises = [];
  static const CALENDAR_FORMAT_IN_DAYS = 7;

  CalendarBloc(
      CalendarState initialState, CalendarExercisesBloc calendarExercisesBloc)
      : super(initialState) {
    observeExercisesDataForEventMarkerReload(calendarExercisesBloc);

    on<GetCalendarEventMarker>((event, emitter) async {
      try {
        var result = await _calendarExerciseProvider.getExerciseMarkerFor(
            dateTime: event.dateTime, clientId: event.clientId);
        _tempEvents.addAll({event.dateTime: result});
        if (_tempEvents.length == CALENDAR_FORMAT_IN_DAYS) {
          emitter(CalendarState.eventForDate(events: _tempEvents));
          _events = _tempEvents;
          _tempEvents = {};
        }
      } catch (error) {
        emitter(CalendarState.error(error: error.toString()));
      }
    });
  }

  void observeExercisesDataForEventMarkerReload(
      CalendarExercisesBloc calendarExercisesBloc) {
    _otherBlocSubscription = calendarExercisesBloc.stream.listen((state) {
      state.whenOrNull(content: (exercises) {
        bool shouldReloadEventMarkers =
            _previousExercises.isEmpty && exercises.isNotEmpty ||
                _previousExercises.isNotEmpty && exercises.isEmpty;
        if (shouldReloadEventMarkers) {
          _previousExercises = List.of(exercises);
          emit(CalendarState.loadEvents(events: _events));
        }
      });
    });
  }

  clearExercisesCache() {
    _previousExercises = [];
  }

  @override
  Future<void> close() {
    _otherBlocSubscription.cancel();
    return super.close();
  }
}
