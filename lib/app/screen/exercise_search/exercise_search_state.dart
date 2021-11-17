import 'package:personal_trainer/domain/model/exercise.dart';

abstract class ExerciseSearchState {}

class SearchSuccess extends ExerciseSearchState {
  final List<Exercise> exercises;

  SearchSuccess(this.exercises);

}

class SearchFailure extends ExerciseSearchState {}

class InitialEmptySearch extends ExerciseSearchState {}

class ExerciseAddedEvent extends ExerciseSearchState {}

class CardExpansionEvent extends ExerciseSearchState {
  final listOfExpandedExercises;

  CardExpansionEvent(this.listOfExpandedExercises);
}
