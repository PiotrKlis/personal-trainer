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

class CalendarExercisesNavigatedToExerciseSearchScreen
    extends CalendarExerciseEvent {}

class CalendarExercisesPanelExpanded extends CalendarExerciseEvent {
  final String exerciseId;
  final bool isExpanded;
  final List<Exercise> exercises;

  CalendarExercisesPanelExpanded(
      this.exerciseId, this.isExpanded, this.exercises);
}

class CalendarExercisesCameBackFromExercisesSearchScreen
    extends CalendarExerciseEvent {
  final clientId;
  final selectedDate;

  CalendarExercisesCameBackFromExercisesSearchScreen(
      {required this.selectedDate, required this.clientId});
}

class CalendarExercisesSetsSubmit extends CalendarExerciseEvent {
  final clientId;
  final setsNumber;
  final exerciseId;
  final selectedDate;

  CalendarExercisesSetsSubmit,
      {required this.clientId, required this.setsNumber});
}

class CalendarExercisesRepsSubmit extends CalendarExerciseEvent {
  final clientId;
  final repsNumber;
  final exerciseId;
  final selectedDate;

  CalendarExercisesRepsSubmit(this.exerciseId, this.selectedDate,
      {required this.clientId, required this.repsNumber});
}
