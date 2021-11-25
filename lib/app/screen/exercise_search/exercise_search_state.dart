import 'package:personal_trainer/domain/model/exercise.dart';

abstract class ExerciseSearchState {}

class ExerciseSearchSuccess extends ExerciseSearchState {
  final List<Exercise> exercises;

  ExerciseSearchSuccess(this.exercises);
}

class ExerciseSearchFailure extends ExerciseSearchState {
  final String error;

  ExerciseSearchFailure(this.error);
}

class ExerciseSearchAllExercises extends ExerciseSearchState {}

class ExerciseSearchExpansionPanelClickSuccess
    extends ExerciseSearchState {
  final List<Exercise> exercises;

  ExerciseSearchExpansionPanelClickSuccess({required this.exercises});
}