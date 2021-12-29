import 'package:freezed_annotation/freezed_annotation.dart';
part 'calendar_exercises_event.freezed.dart';

@freezed
class CalendarExerciseEvent with _$CalendarExerciseEvent {
  const factory CalendarExerciseEvent.newDateSelected(
      {required DateTime selectedDate,
      required String clientId}) = _NewDateSelected;

  const factory CalendarExerciseEvent.setsSubmit(
      {required String clientId,
      required String setsNumber,
      required String userExerciseId}) = _SetsSubmit;

  const factory CalendarExerciseEvent.repsSubmit(
      {required String clientId,
      required String repsNumber,
      required String userExerciseId}) = _RepsSubmit;

  const factory CalendarExerciseEvent.navigateToSearchScreen(
      {required String clientId}) = _SearchNavigation;

  const factory CalendarExerciseEvent.exerciseDeleted({required String userExerciseId}) = _ExerciseDeleted;
}

// abstract class CalendarExerciseEvent {}
//
// class CalendarExercisesNewDateSelected extends CalendarExerciseEvent {
//   final DateTime selectedDate;
//   final String clientId;
//
//   CalendarExercisesNewDateSelected(
//       {required this.selectedDate, required this.clientId});
// }
//
// class CalendarExercisesSetsSubmit extends CalendarExerciseEvent {
//   final String clientId;
//   final String setsNumber;
//   final String userExerciseId;
//
//   CalendarExercisesSetsSubmit(
//       {required this.clientId,
//       required this.setsNumber,
//       required this.userExerciseId});
// }
//
// class CalendarExercisesRepsSubmit extends CalendarExerciseEvent {
//   final String clientId;
//   final String repsNumber;
//   final String userExerciseId;
//
//   CalendarExercisesRepsSubmit(
//       {required this.clientId,
//       required this.repsNumber,
//       required this.userExerciseId});
// }
//
// class CalendarExerciseToSearchNavigation extends CalendarExerciseEvent {
//   final String clientId;
//
//   CalendarExerciseToSearchNavigation(this.clientId);
// }
