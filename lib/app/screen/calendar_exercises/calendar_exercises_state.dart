import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'calendar_exercises_state.freezed.dart';

@freezed
abstract class CalendarExercisesState with _$CalendarExercisesState {
  factory CalendarExercisesState.started() = _Started;
  factory CalendarExercisesState.loading() = _Loading;
  factory CalendarExercisesState.error({required String error}) = _Error;
  factory CalendarExercisesState.content({required List<Exercise> exercises}) = _Content;
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
