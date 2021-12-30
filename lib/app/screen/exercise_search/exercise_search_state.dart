import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

abstract class ExerciseSearchState {}

class ExerciseSearchSuccess extends ExerciseSearchState {
  final List<Exercise> userExercises;

  ExerciseSearchSuccess(this.userExercises);
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