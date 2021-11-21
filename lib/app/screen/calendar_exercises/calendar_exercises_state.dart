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

class CalendarExercisesNavigateToExerciseSearchScreenSuccess
    extends CalendarExercisesState {}

class CalendarExercisesExpansionPanelClickSuccess
    extends CalendarExercisesState {
  final List<Exercise> exercises;

  CalendarExercisesExpansionPanelClickSuccess({required this.exercises});
}

class CalendarExercisesDataReloadSuccess extends CalendarExercisesState {
  final List<Exercise> exercises;

  CalendarExercisesDataReloadSuccess({required this.exercises});
}

class CalendarExercisesDataReloadFailed extends CalendarExercisesState {}
