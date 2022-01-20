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
  Map<DateTime, bool> _events = {};
  late final StreamSubscription _otherBlocSubscription;
  List<UserExercise> _exercisesCache = [];

  CalendarBloc(
      CalendarState initialState, CalendarExercisesBloc calendarExercisesBloc)
      : super(initialState) {
    _otherBlocSubscription = calendarExercisesBloc.stream.listen((state) {
      state.whenOrNull(content: (exercises) {
        if (_exercisesCache.isEmpty && exercises.isNotEmpty ||
            _exercisesCache.isNotEmpty && exercises.isEmpty) {
          _exercisesCache = List.of(exercises);
          emit(CalendarState.loadEvents());
        }
      });
    });

    on<GetCalendarEventMarker>((event, emitter) async {
      try {
        var result = await _calendarExerciseProvider.getExerciseMarkerFor(
            dateTime: event.dateTime, clientId: event.clientId);
        _events.addAll({event.dateTime: result});
        if (_events.length == 7) {
          emitter(CalendarState.eventForDate(events: _events));
          _events = {};
        }
      } catch (error) {
        emitter(CalendarState.error(error: error.toString()));
      }
    });
  }

  clearExercisesCache() {
    _exercisesCache = [];
  }

  @override
  Future<void> close() {
    _otherBlocSubscription.cancel();
    return super.close();
  }
}
