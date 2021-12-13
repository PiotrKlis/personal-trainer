import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

part 'calendar_exercises_state.freezed.dart';

@freezed
class CalendarExercisesState with _$CalendarExercisesState {
  const factory CalendarExercisesState.started() = _Started;
  const factory CalendarExercisesState.loading() = _Loading;
  const factory CalendarExercisesState.error({required String error}) = _Error;
  const factory CalendarExercisesState.content({required List<Exercise> exercises}) = _Content;
}

@freezed
class MyClass {
  factory MyClass() = _MyClass;
}

// abstract class CalendarExercisesState {}

// class CalendarExercisesStarted extends CalendarExercisesState {}

// class CalendarExercisesDataLoadInProgress extends CalendarExercisesState {}
//
// class CalendarExercisesDataLoadSuccess extends CalendarExercisesState {
//   final List<Exercise> exercises;
//
//   CalendarExercisesDataLoadSuccess({required this.exercises});
// }
//
// class CalendarExercisesDataLoadFailed extends CalendarExercisesState {}
//
// class CalendarFormatChangeSuccess extends CalendarExercisesState {
//   final CalendarFormat format;
//
//   CalendarFormatChangeSuccess({required this.format});
// }
//
// class CalendarExercisesNavigateToExerciseSearchScreenSuccess
//     extends CalendarExercisesState {}
//
// class CalendarExercisesExpansionPanelClickSuccess
//     extends CalendarExercisesState {
//   final List<Exercise> exercises;
//
//   CalendarExercisesExpansionPanelClickSuccess({required this.exercises});
// }
//
// class CalendarExercisesDataReloadSuccess extends CalendarExercisesState {
//   final List<Exercise> exercises;
//
//   CalendarExercisesDataReloadSuccess({required this.exercises});
// }
//
// class CalendarExercisesDataReloadFailed extends CalendarExercisesState {}
