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
  final int index;
  final bool isExpanded;

  CalendarExercisesPanelExpanded(this.index, this.isExpanded);
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

  CalendarExercisesSetsSubmit(
      {required this.clientId, required this.setsNumber});
}

class CalendarExercisesRepsSubmit extends CalendarExerciseEvent {
  final clientId;
  final repsNumber;

  CalendarExercisesRepsSubmit(
      {required this.clientId, required this.repsNumber});
}
