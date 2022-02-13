import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/auto_route_navigator.dart';
import 'package:personal_trainer/app/util/event_transformer.dart';
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
    on<NewDateSelected>((event, emitter) async {
      try {
        emitter(CalendarExercisesState.loading());
        var exercises = await _calendarExerciseProvider.getExercisesFor(
            selectedDay: event.selectedDate, clientId: event.clientId);
        _selectedDate = event.selectedDate;
        _userExercises = exercises;
        emitter(CalendarExercisesState.content(userExercises: exercises));
      } catch (error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      }
    });

    on<ExerciseDeleted>((event, emitter) async {
      try {
        await _calendarExerciseProvider.deleteExercise(
            userExerciseId: event.userExerciseId,
            clientId: event.clientId,
            selectedDate: _selectedDate);
        _userExercises.removeAt(event.index);
        await _updateExercisesIndexes(
            clientId: event.clientId, index: event.index);
        /**
            Figure out how to send content without changing state to loading.
            State is updating itself on delete and thus inside emitter this.state == state
         */
        emitter(CalendarExercisesState.loading());
        emitter(CalendarExercisesState.content(userExercises: _userExercises));
      } catch (error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      }
    });

    on<ReorderExercises>((event, emitter) async {
      try {
        int newIndex = _fixNewIndexOnReorder(event.newIndex, event.oldIndex);
        _reorderLocalExercisesList(event, newIndex);
        await _updateExercisesIndexes(
            clientId: event.clientId,
            index: _getLowerIndex(event.oldIndex, newIndex));
        /**
            Figure out how to send content without changing state to loading.
            State is updating itself on delete and thus inside emitter this.state == state
         */
        emitter(CalendarExercisesState.loading());
        emitter(CalendarExercisesState.content(userExercises: _userExercises));
      } catch (error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      }
    });

    on<SetsSubmit>((event, emitter) async {
      try {
        var formattedNumber = int.tryParse(event.setsNumber) ?? 0;
        await _calendarExerciseProvider.updateSetsNumberForExercise(
            clientId: event.clientId,
            setsNumber: formattedNumber,
            userExerciseId: event.userExerciseId,
            selectedDate: _selectedDate);
        _updateSetsNumberLocally(event, formattedNumber);
        emitter(CalendarExercisesState.content(userExercises: _userExercises));
      } catch (error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      }
    },
        transformer:
            debounce(Duration(milliseconds: DurationConst.debounceTime)));

    on<RepsSubmit>((event, emitter) async {
      try {
        var formattedNumber = int.tryParse(event.repsNumber) ?? 0;
        await _calendarExerciseProvider.updateRepsNumberForExercise(
            clientId: event.clientId,
            repsNumber: formattedNumber,
            userExerciseId: event.userExerciseId,
            selectedDate: _selectedDate);
        _updateRepsNumberLocally(event, formattedNumber);
        emitter(CalendarExercisesState.content(userExercises: _userExercises));
      } catch (error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      }
    },
        transformer:
            debounce(Duration(milliseconds: DurationConst.debounceTime)));

    on<SearchNavigation>((event, emitter) async {
      try {
        await _navigator.navigateToExerciseSearch(
            selectedDate: _selectedDate,
            clientId: event.clientId,
            listLength: _userExercises.length);
        emitter(CalendarExercisesState.loading());
        await _updateExercisesOnBackFromSearch(event);
        emitter(CalendarExercisesState.content(userExercises: _userExercises));
      } catch (error) {
        emitter(CalendarExercisesState.error(error: error.toString()));
      }
    });
  }

  Future<void> _updateExercisesOnBackFromSearch(SearchNavigation event) async {
    var exercises = await _calendarExerciseProvider.getExercisesFor(
        selectedDay: _selectedDate, clientId: event.clientId);
    exercises.sort((a, b) => a.index.compareTo(b.index));
    _userExercises = exercises;
  }

  void _updateSetsNumberLocally(SetsSubmit event, int formattedNumber) {
    int index = _userExercises
        .indexWhere((exercise) => exercise.id == event.userExerciseId);
    _userExercises[index] =
        _userExercises[index].copyWith(sets: formattedNumber);
  }

  void _updateRepsNumberLocally(RepsSubmit event, int formattedNumber) {
    int index = _userExercises
        .indexWhere((exercise) => exercise.id == event.userExerciseId);
    _userExercises[index] =
        _userExercises[index].copyWith(reps: formattedNumber);
  }

  void _reorderLocalExercisesList(ReorderExercises event, int newIndex) {
    var reorderedExercise = _userExercises[event.oldIndex];
    _userExercises.removeAt(event.oldIndex);
    _userExercises.insert(newIndex, reorderedExercise);
  }

  int _getLowerIndex(int oldIndex, int newIndex) {
    int index = 0;
    if (oldIndex < newIndex) {
      index = oldIndex;
    } else {
      index = newIndex;
    }
    return index;
  }

  // https://github.com/flutter/flutter/issues/24786
  int _fixNewIndexOnReorder(int newIndex, int oldIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    return newIndex;
  }

  Future<void> _updateExercisesIndexes(
      {required String clientId, required int index}) async {
    for (var i = index; i < _userExercises.length; i++) {
      _userExercises[i] = _userExercises[i].copyWith(index: i);
      await _calendarExerciseProvider.updateIndex(
          clientId: clientId,
          userExerciseId: _userExercises[i].id,
          index: i,
          selectedDate: _selectedDate);
    }
  }
}
