import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercise_search_add_exercise_state.freezed.dart';

@freezed
class ExerciseSearchAddExerciseState with _$ExerciseSearchAddExerciseState {
  const factory ExerciseSearchAddExerciseState.initial() = _Initial;
  const factory ExerciseSearchAddExerciseState.exerciseAddedSuccess({required String exerciseName}) = _ExerciseAddedSuccess;
  const factory ExerciseSearchAddExerciseState.exerciseAddedFailure({required String exerciseName}) = _ExerciseAddedFailure;
}
