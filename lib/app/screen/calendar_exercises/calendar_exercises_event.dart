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
  final String clientId;
  final DateTime selectedDate;

  CalendarExercisesCameBackFromExercisesSearchScreen(
      {required this.selectedDate, required this.clientId});
}

class CalendarExercisesSetsSubmit extends CalendarExerciseEvent {
  final String clientId;
  final String setsNumber;
  final String exerciseId;
  final DateTime selectedDate;

  CalendarExercisesSetsSubmit(
      {required this.clientId,
      required this.setsNumber,
      required this.exerciseId,
      required this.selectedDate});
}

class CalendarExercisesRepsSubmit extends CalendarExerciseEvent {
  final String clientId;
  final String repsNumber;
  final String exerciseId;
  final DateTime selectedDate;

  CalendarExercisesRepsSubmit(
      {required this.clientId,
        required this.repsNumber,
        required this.exerciseId,
        required this.selectedDate});
}
