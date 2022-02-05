import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercise_search_add_exercise_state.freezed.dart';

@freezed
class ExerciseSearchAddExerciseState with _$ExerciseSearchAddExerciseState {
  const factory ExerciseSearchAddExerciseState.initial() = _Initial;
  const factory ExerciseSearchAddExerciseState.exerciseAddedSuccess() = _ExerciseAddedSuccess;
  const factory ExerciseSearchAddExerciseState.exerciseAddedFailure() = _ExerciseAddedFailure;
}
