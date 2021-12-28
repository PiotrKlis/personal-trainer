import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class CalendarExerciseEvent {}

class CalendarExercisesNewDateSelected extends CalendarExerciseEvent {
  final DateTime selectedDate;
  final String clientId;

  CalendarExercisesNewDateSelected(
      {required this.selectedDate, required this.clientId});
}

class CalendarExercisesDateFormatChanged extends CalendarExerciseEvent {
  final CalendarFormat calendarFormat;

  CalendarExercisesDateFormatChanged(this.calendarFormat);
}

class CalendarExercisesPanelExpanded extends CalendarExerciseEvent {
  final String exerciseId;
  final bool isExpanded;
  final List<Exercise> exercises;

  CalendarExercisesPanelExpanded(
      this.exerciseId, this.isExpanded, this.exercises);
}

class CalendarExercisesSetsSubmit extends CalendarExerciseEvent {
  final String clientId;
  final String setsNumber;
  final String userExerciseId;

  CalendarExercisesSetsSubmit(
      {required this.clientId,
      required this.setsNumber,
      required this.userExerciseId});
}

class CalendarExercisesRepsSubmit extends CalendarExerciseEvent {
  final String clientId;
  final String repsNumber;
  final String userExerciseId;

  CalendarExercisesRepsSubmit(
      {required this.clientId,
      required this.repsNumber,
      required this.userExerciseId});
}

class CalendarExerciseToSearchNavigation extends CalendarExerciseEvent {
  final String clientId;

  CalendarExerciseToSearchNavigation(this.clientId);
}
