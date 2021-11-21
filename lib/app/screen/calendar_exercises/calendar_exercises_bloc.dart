import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

import 'calendar_exercises_event.dart';
import 'calendar_exercises_state.dart';

class CalendarExercisesBloc
    extends Bloc<CalendarExerciseEvent, CalendarExercisesState> {
  final CalendarExerciseProvider _calendarExerciseProvider;
  List<Exercise> _listOfExercises = [];
  List<String> listOfExpandedExercises = [];

  CalendarExercisesBloc(
      CalendarExercisesState initialState, this._calendarExerciseProvider)
      : super(initialState) {
    on<CalendarExercisesNewDateSelected>((event, emit) async {
      emit(CalendarExercisesDataLoadInProgress());
      await _calendarExerciseProvider
          .getExercisesFor(
              selectedDay: event.selectedDate, clientId: event.clientId)
          .then((exercises) {
        _listOfExercises = exercises;
        emit(CalendarExercisesDataLoadSuccess(exercises: exercises));
      }).catchError((error) {
        emit(CalendarExercisesDataLoadFailed());
      });
    });

    on<CalendarExercisesDateFormatChanged>((event, emit) =>
        emit(CalendarFormatChangeSuccess(format: event.calendarFormat)));

    on<CalendarExercisesNavigatedToExerciseSearchScreen>((event, emit) =>
        emit(CalendarExercisesNavigateToExerciseSearchScreenSuccess()));

    on<CalendarExercisesPanelExpanded>((event, emit) {
      String id = _listOfExercises[event.index].id;
      if (listOfExpandedExercises.contains(id)) {
        listOfExpandedExercises.remove(id);
      } else {
        listOfExpandedExercises.add(id);
      }
      emit(CalendarExercisesExpansionPanelClickSuccess(
          exercises: _listOfExercises));
    });

    on<CalendarExercisesCameBackFromExercisesSearchScreen>((event, emit) async {
      emit(CalendarExercisesDataLoadInProgress());
      await _calendarExerciseProvider
          .getExercisesFor(
              selectedDay: event.selectedDate, clientId: event.clientId)
          .then((exercises) {
        _listOfExercises = exercises;
        emit(CalendarExercisesDataReloadSuccess(exercises: _listOfExercises));
      }).catchError((error) {
        emit(CalendarExercisesDataReloadFailed());
      });
    });

    on<CalendarExercisesSetsSubmit>((event, emit) async {
      await _calendarExerciseProvider
          .updateSetsNumberForExercise(
              clientId: event.clientId, setsNumber: event.setsNumber)
          .then((value) {
        Log.d("Sets number updated to ${event.setsNumber}");
      });
    });

    on<CalendarExercisesRepsSubmit>((event, emit) async {
      await _calendarExerciseProvider
          .updateRepsNumberForExercise(
              clientId: event.clientId, repsNumber: event.repsNumber)
          .then((value) {
        Log.d("Reps number updated ${event.repsNumber}");
      });
    });
  }
}
