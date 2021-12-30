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
import 'calendar_exercises_state.dart';

class CalendarExercisesBloc
    extends Bloc<CalendarExerciseEvent, CalendarExercisesState> {
  final CalendarExerciseProvider _calendarExerciseProvider =
      GetIt.I.get<CalendarExerciseProvider>();
  final AutoRouteNavigator _navigator = AutoRouteNavigator();
  var _selectedDate = DateTime.now();
  List<Exercise> _exercises = [];

  CalendarExercisesBloc(CalendarExercisesState initialState)
      : super(initialState) {
    on<CalendarExerciseEvent>((event, emitter) async {
      await event.whenOrNull(
          newDateSelected: (selectedDate, clientId) => _newDateSelected(
              emit: emitter, selectedDate: selectedDate, clientId: clientId),
          navigateToSearchScreen: (clientId) =>
              _navigateToSearch(emitter: emitter, clientId: clientId),
          exerciseDeleted: (userExerciseId, clientId) => _deleteExercise(
              emitter: emitter,
              userExerciseId: userExerciseId,
              clientId: clientId),
          setsSubmit: (clientId, setsNumber, userExerciseId) => _setsSubmit(
              emitter: emitter,
              clientId: clientId,
              setsNumber: setsNumber,
              userExerciseId: userExerciseId),
          repsSubmit: (clientId, repsNumber, userExerciseId) => _repsSubmit(
              emitter: emitter,
              clientId: clientId,
              repsNumber: repsNumber,
              userExerciseId: userExerciseId));
    });
  }

  _newDateSelected(
      {required Emitter<CalendarExercisesState> emit,
      required DateTime selectedDate,
      required String clientId}) async {
    emit(CalendarExercisesState.loading());
    await _calendarExerciseProvider
        .getExercisesFor(selectedDay: selectedDate, clientId: clientId)
        .then((exercises) {
      emit(CalendarExercisesState.content(exercises: exercises));
      _selectedDate = selectedDate;
      _exercises = exercises;
    }).catchError((error) {
      emit(CalendarExercisesState.error(error: error.toString()));
    });
  }

  _setsSubmit(
      {required Emitter<CalendarExercisesState> emitter,
      required String clientId,
      required String setsNumber,
      required String userExerciseId}) async {
    var formattedNumber = int.tryParse(setsNumber) ?? 0;
    await _calendarExerciseProvider
        .updateSetsNumberForExercise(
            clientId: clientId,
            setsNumber: int.parse(setsNumber),
            userExerciseId: userExerciseId,
            selectedDate: _selectedDate)
        .then((value) {
      var updatedExercise = _exercises
          .firstWhere((element) => element.userExerciseId == userExerciseId)
          .copyWith(sets: formattedNumber);
      _exercises[_exercises.indexWhere(
              (element) => element.userExerciseId == userExerciseId)] =
          updatedExercise;
      Log.d("Sets number updated to $setsNumber");
      emitter(CalendarExercisesState.content(exercises: _exercises));
    });
  }

  _repsSubmit(
      {required Emitter<CalendarExercisesState> emitter,
      required String clientId,
      required String repsNumber,
      required String userExerciseId}) async {
    var formattedNumber = int.tryParse(repsNumber) ?? 0;
    await _calendarExerciseProvider
        .updateRepsNumberForExercise(
            clientId: clientId,
            repsNumber: formattedNumber,
            userExerciseId: userExerciseId,
            selectedDate: _selectedDate)
        .then((value) {
      var updatedExercise = _exercises
          .firstWhere((element) => element.userExerciseId == userExerciseId)
          .copyWith(reps: formattedNumber);
      _exercises[_exercises.indexWhere(
              (element) => element.userExerciseId == userExerciseId)] =
          updatedExercise;
      Log.d("Reps number updated $repsNumber");
      emitter(CalendarExercisesState.content(exercises: _exercises));
    });
  }

  _navigateToSearch(
      {required Emitter<CalendarExercisesState> emitter,
      required String clientId}) async {
    await _navigator
        .navigateToExerciseSearch(
            selectedDate: _selectedDate, clientId: clientId)
        .then((value) async {
      emitter(CalendarExercisesState.loading());
      await _calendarExerciseProvider
          .getExercisesFor(selectedDay: _selectedDate, clientId: clientId)
          .then((exercises) {
        _exercises = exercises;
        emitter(CalendarExercisesState.content(exercises: exercises));
      }).catchError((error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      });
    });
  }

  _deleteExercise(
      {required Emitter<CalendarExercisesState> emitter,
      required String userExerciseId,
      required String clientId}) async {
    await _calendarExerciseProvider
        .deleteExercise(
            userExerciseId: userExerciseId,
            clientId: clientId,
            selectedDate: _selectedDate)
        .then((value) {
      _exercises
          .removeWhere((element) => element.userExerciseId == userExerciseId);
      emitter(CalendarExercisesState.content(exercises: _exercises));
    });
  }
}
