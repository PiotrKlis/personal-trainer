import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/auto_route_navigator.dart';
import 'package:personal_trainer/app/util/event_transformer.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

import 'calendar_exercises_event.dart';
import 'calendar_exercises_event.dart';
import 'calendar_exercises_state.dart';

class CalendarExercisesBloc
    extends Bloc<CalendarExerciseEvent, CalendarExercisesState> {
  final CalendarExerciseProvider _calendarExerciseProvider =
  GetIt.I.get<CalendarExerciseProvider>();
  final AutoRouteNavigator _navigator = AutoRouteNavigator();
  var _selectedDate = DateTime.now();
  List<Exercise> _exercises = [];

  //TODO: there's gonna be probably need to have on on<> and then do when
  CalendarExercisesBloc(CalendarExercisesState initialState)
      : super(initialState) {
    on<CalendarExerciseEvent>((event, emit) async {
      event.when(
          newDateSelected: newDateSelected,
          setsSubmit: setsSubmit,
          repsSubmit: repsSubmit,
          navigateToSearchScreen: navigateToSearchScreen,
          exerciseDeleted: exerciseDeleted)
    });

    on<CalendarExerciseEvent.newDateSelected>((event, emit) async {
      emit(CalendarExercisesState.loading());
      await _calendarExerciseProvider
          .getExercisesFor(
          selectedDay: event.selectedDate, clientId: event.clientId)
          .then((exercises) {
        emit(CalendarExercisesState.content(exercises: exercises));
        _selectedDate = event.selectedDate;
        _exercises = exercises;
      }).catchError((error) {
        emit(CalendarExercisesState.error(error: error.toString()));
      });
    });

    on<CalendarExercisesSetsSubmit>((event, emit) async {
      var formattedNumber = int.tryParse(event.setsNumber) ?? 0;
      await _calendarExerciseProvider
          .updateSetsNumberForExercise(
          clientId: event.clientId,
          setsNumber: int.parse(event.setsNumber),
          userExerciseId: event.userExerciseId,
          selectedDate: _selectedDate)
          .then((value) {
        var updatedExercise = _exercises
            .firstWhere(
                (element) => element.userExerciseId == event.userExerciseId)
            .copyWith(sets: formattedNumber);
        _exercises[_exercises.indexWhere(
                (element) => element.userExerciseId == event.userExerciseId)] =
            updatedExercise;
        Log.d("Sets number updated to ${event.setsNumber}");
        emit(CalendarExercisesState.content(exercises: _exercises));
      });
    },
        transformer:
        debounce(Duration(milliseconds: DurationConst.debounceTime)));

    on<CalendarExercisesRepsSubmit>((event, emit) async {
      var formattedNumber = int.tryParse(event.repsNumber) ?? 0;
      await _calendarExerciseProvider
          .updateRepsNumberForExercise(
          clientId: event.clientId,
          repsNumber: formattedNumber,
          userExerciseId: event.userExerciseId,
          selectedDate: _selectedDate)
          .then((value) {
        var updatedExercise = _exercises
            .firstWhere(
                (element) => element.userExerciseId == event.userExerciseId)
            .copyWith(reps: formattedNumber);
        _exercises[_exercises.indexWhere(
                (element) => element.userExerciseId == event.userExerciseId)] =
            updatedExercise;
        Log.d("Reps number updated ${event.repsNumber}");
        emit(CalendarExercisesState.content(exercises: _exercises));
      });
    },
        transformer:
        debounce(Duration(milliseconds: DurationConst.debounceTime)));

    on<CalendarExerciseToSearchNavigation>((event, emit) async {
      await _navigator
          .navigateToExerciseSearch(
          selectedDate: _selectedDate, clientId: event.clientId)
          .then((value) async {
        emit(CalendarExercisesState.loading());
        await _calendarExerciseProvider
            .getExercisesFor(
            selectedDay: _selectedDate, clientId: event.clientId)
            .then((exercises) {
          _exercises = exercises;
          emit(CalendarExercisesState.content(exercises: exercises));
        }).catchError((error) {
          emit(CalendarExercisesState.error(error: error.toString()));
        });
      });
    });
  }
}
