import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class CalendarExerciseState {}

class CalendarExerciseLoadInProgress extends CalendarExerciseState {}

class CalendarFormatChangeSuccess extends CalendarExerciseState {
  final CalendarFormat format;

  CalendarFormatChangeSuccess({required this.format});
}

class CalendarExerciseLoadSuccess extends CalendarExerciseState {
  final List<Exercise> listOfExercises;

  CalendarExerciseLoadSuccess({required this.listOfExercises});
}
