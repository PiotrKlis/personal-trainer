import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_exercises_event.freezed.dart';

@freezed
class CalendarExerciseEvent with _$CalendarExerciseEvent {
  const factory CalendarExerciseEvent.newDateSelected(
      {required DateTime selectedDate,
      required String clientId}) = _NewDateSelected;

  const factory CalendarExerciseEvent.navigateToSearchScreen(
      {required String clientId}) = _SearchNavigation;

  const factory CalendarExerciseEvent.exerciseDeleted(
      {required String userExerciseId,
      required String clientId}) = _ExerciseDeleted;

  const factory CalendarExerciseEvent.setsSubmit(
      {required String clientId,
      required String setsNumber,
      required String userExerciseId}) = _SetsSubmit;

  const factory CalendarExerciseEvent.repsSubmit(
      {required String clientId,
      required String repsNumber,
      required String userExerciseId}) = _RepsSubmit;

  const factory CalendarExerciseEvent.reorderExercises(
      {required int oldIndex,
        required int newIndex,
        required String clientId}) = _ReorderExercises;
}
