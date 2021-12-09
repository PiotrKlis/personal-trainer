import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';

import 'calendar_exercises_event.dart';
import 'calendar_exercises_state.dart';

class CalendarExercisesBloc
    extends Bloc<CalendarExerciseEvent, CalendarExercisesState> {
  final CalendarExerciseProvider _calendarExerciseProvider =
      GetIt.I.get<CalendarExerciseProvider>();
  List<String> listOfExpandedExercises = [];

  CalendarExercisesBloc(CalendarExercisesState initialState)
      : super(initialState) {
    on<CalendarExercisesNewDateSelected>((event, emit) async {
      emit(CalendarExercisesState.loading());
      await _calendarExerciseProvider
          .getExercisesFor(
              selectedDay: event.selectedDate, clientId: event.clientId)
          .then((exercises) {
        emit(CalendarExercisesState.content(exercises: exercises));
      }).catchError((error) {
        emit(CalendarExercisesState.error(error: error.toString()));
      });
    });

    //TODO: Migrate to reusable widget
    // on<CalendarExercisesDateFormatChanged>((event, emit) =>
    //     emit(CalendarFormatChangeSuccess(format: event.calendarFormat)));

    on<CalendarExercisesNavigatedToExerciseSearchScreen>((event, emit) {
      //TODO: use custom navigator with context inside
    });

    //TODO: Migrate to reusable widget
    // on<CalendarExercisesPanelExpanded>((event, emit) {
    //   var id = event.exerciseId;
    //   if (listOfExpandedExercises.contains(id)) {
    //     listOfExpandedExercises.remove(id);
    //   } else {
    //     listOfExpandedExercises.add(id);
    //   }
    //   emit(CalendarExercisesExpansionPanelClickSuccess(
    //       exercises: event.exercises));
    // });

    on<CalendarExercisesCameBackFromExercisesSearchScreen>((event, emit) async {
      emit(CalendarExercisesState.loading());
      await _calendarExerciseProvider
          .getExercisesFor(
              selectedDay: event.selectedDate, clientId: event.clientId)
          .then((exercises) {
        emit(CalendarExercisesState.content(exercises: exercises));
      }).catchError((error) {
        emit(CalendarExercisesState.error(error: error.toString()));
      });
    });

    on<CalendarExercisesSetsSubmit>((event, emit) async {
      await _calendarExerciseProvider
          .updateSetsNumberForExercise(
              clientId: event.clientId,
              setsNumber: event.setsNumber,
              exerciseId: event.exerciseId,
              selectedDate: event.selectedDate)
          .then((value) {
        Log.d("Sets number updated to ${event.setsNumber}");
      });
    });

    on<CalendarExercisesRepsSubmit>((event, emit) async {
      await _calendarExerciseProvider
          .updateRepsNumberForExercise(
              clientId: event.clientId,
              repsNumber: event.repsNumber,
              exerciseId: event.exerciseId,
              selectedDate: event.selectedDate)
          .then((value) {
        Log.d("Reps number updated ${event.repsNumber}");
      });
    });
  }
}
