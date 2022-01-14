import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/auto_route_navigator.dart';
import 'package:personal_trainer/app/util/event_transformer.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

import 'calendar_exercises_event.dart';
import 'calendar_exercises_state.dart';

class CalendarExercisesBloc
    extends Bloc<CalendarExerciseEvent, CalendarExercisesState> {
  final CalendarExerciseProvider _calendarExerciseProvider =
      GetIt.I.get<CalendarExerciseProvider>();
  final AutoRouteNavigator _navigator = AutoRouteNavigator();
  DateTime _selectedDate = DateTime.now();
  List<UserExercise> _userExercises = [];

  CalendarExercisesBloc(CalendarExercisesState initialState)
      : super(initialState) {
    on<SearchNavigation>((event, emitter) async {
      await _navigator
          .navigateToExerciseSearch(
              selectedDate: _selectedDate,
              clientId: event.clientId,
              listLength: _userExercises.length)
          .then((value) async {
        emitter(CalendarExercisesState.loading());
        await _calendarExerciseProvider
            .getExercisesFor(
                selectedDay: _selectedDate, clientId: event.clientId)
            .then((exercises) {
          exercises.sort((a, b) => a.index.compareTo(b.index));
          _userExercises = exercises;
          emitter(CalendarExercisesState.content(userExercises: exercises));
        }).catchError((error) {
          emitter(CalendarExercisesState.error(error: error.toString()));
        });
      });
    });

    on<ExerciseDeleted>((event, emitter) async {
      await _calendarExerciseProvider
          .deleteExercise(
              userExerciseId: event.userExerciseId,
              clientId: event.clientId,
              selectedDate: _selectedDate)
          .then((value) async {
        _userExercises.removeAt(event.index);
        for (var i = event.index; i < _userExercises.length; i++) {
          _userExercises[i] = _userExercises[i].copyWith(index: i);
          await _calendarExerciseProvider.updateIndex(
              clientId: event.clientId,
              userExerciseId: _userExercises[i].id,
              index: i,
              selectedDate: _selectedDate);
        }
        emitter(CalendarExercisesState.loading());
        emitter(CalendarExercisesState.content(userExercises: _userExercises));
      }).catchError((error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      });
    });

    on<SetsSubmit>((event, emitter) async {
      var formattedNumber = int.tryParse(event.setsNumber) ?? 0;
      await _calendarExerciseProvider
          .updateSetsNumberForExercise(
              clientId: event.clientId,
              setsNumber: formattedNumber,
              userExerciseId: event.userExerciseId,
              selectedDate: _selectedDate)
          .then((value) {
        var updatedExercise = _userExercises
            .firstWhere((exercise) => exercise.id == event.userExerciseId)
            .copyWith(sets: formattedNumber);
        _userExercises[_userExercises.indexWhere(
                (exercise) => exercise.id == event.userExerciseId)] =
            updatedExercise;
        emitter(CalendarExercisesState.content(userExercises: _userExercises));
      }).catchError((error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      });
    },
        transformer:
            debounce(Duration(milliseconds: DurationConst.debounceTime)));

    on<RepsSubmit>((event, emitter) async {
      var formattedNumber = int.tryParse(event.repsNumber) ?? 0;
      await _calendarExerciseProvider
          .updateRepsNumberForExercise(
              clientId: event.clientId,
              repsNumber: formattedNumber,
              userExerciseId: event.userExerciseId,
              selectedDate: _selectedDate)
          .then((value) {
        var updatedExercise = _userExercises
            .firstWhere((exercise) => exercise.id == event.userExerciseId)
            .copyWith(reps: formattedNumber);
        _userExercises[_userExercises.indexWhere(
                (exercise) => exercise.id == event.userExerciseId)] =
            updatedExercise;
        emitter.call(
            CalendarExercisesState.content(userExercises: _userExercises));
      }).catchError((error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      });
    },
        transformer:
            debounce(Duration(milliseconds: DurationConst.debounceTime)));

    on<ReorderExercises>((event, emitter) async {
      Log.d("before $_userExercises");
      var userExercise = _userExercises[event.oldIndex];
      _userExercises.removeAt(event.oldIndex);
      _userExercises.insert(event.newIndex, userExercise);
      Log.d("after $_userExercises");
      // await _calendarExerciseProvider
      //     .reorderExercises(
      //
      // )
    });

    on<NewDateSelected>((event, emitter) async {
      emitter(CalendarExercisesState.loading());
      await _calendarExerciseProvider
          .getExercisesFor(
              selectedDay: event.selectedDate, clientId: event.clientId)
          .then((exercises) {
        emitter(CalendarExercisesState.content(userExercises: exercises));
        _selectedDate = event.selectedDate;
        _userExercises = exercises;
      }).catchError((error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      });
    });
  }
}
