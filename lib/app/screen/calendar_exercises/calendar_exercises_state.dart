import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class CalendarExercisesState {}

class CalendarExercisesStarted extends CalendarExercisesState {}

class CalendarExercisesDataLoadInProgress extends CalendarExercisesState {}

class CalendarExercisesDataLoadSuccess extends CalendarExercisesState {
  final List<Exercise> exercises;

  CalendarExercisesDataLoadSuccess({required this.exercises});
}

class CalendarExercisesDataLoadFailed extends CalendarExercisesState {}

class CalendarFormatChangeSuccess extends CalendarExercisesState {
  final CalendarFormat format;

  CalendarFormatChangeSuccess({required this.format});
}

class CalendarExercisesNavigateToExerciseSearchScreenSuccess extends CalendarExercisesState {}

class CalendarExercisesExpansionSuccess extends CalendarExercisesState {}