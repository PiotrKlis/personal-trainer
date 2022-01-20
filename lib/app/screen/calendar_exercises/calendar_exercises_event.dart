import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'calendar_exercises_event.freezed.dart';

@freezed
class CalendarExerciseEvent with _$CalendarExerciseEvent {
  const factory CalendarExerciseEvent.newDateSelected(
      {required DateTime selectedDate,
      required String clientId}) = NewDateSelected;

  const factory CalendarExerciseEvent.navigateToSearchScreen(
      {required String clientId}) = SearchNavigation;

  const factory CalendarExerciseEvent.exerciseDeleted(
      {required String userExerciseId,
      required String clientId,
      required int index}) = ExerciseDeleted;

  const factory CalendarExerciseEvent.setsSubmit(
      {required String clientId,
      required String setsNumber,
      required String userExerciseId}) = SetsSubmit;

  const factory CalendarExerciseEvent.repsSubmit(
      {required String clientId,
      required String repsNumber,
      required String userExerciseId}) = RepsSubmit;

  const factory CalendarExerciseEvent.reorderExercises(
      {required int oldIndex,
      required int newIndex,
      required String clientId}) = ReorderExercises;

  const factory CalendarExerciseEvent.newDateFormatSelected(
      {required CalendarFormat calendarFormat,
      required String clientId}) = NewDateFormatSelected;
}
