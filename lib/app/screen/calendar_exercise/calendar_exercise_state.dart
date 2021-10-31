import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/src/shared/utils.dart';

abstract class CalendarExerciseState {}

class CalendarExerciseLoading extends CalendarExerciseState {}

class CalendarFormatChanged extends CalendarExerciseState {
  final CalendarFormat format;

  CalendarFormatChanged(this.format);
}

class CalendarExerciseData extends CalendarExerciseState {
  final List<Exercise> listOfExercises;

  CalendarExerciseData(this.listOfExercises);
}
