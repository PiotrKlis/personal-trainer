import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_search_add_exercise_event.freezed.dart';

@freezed
class ExerciseSearchAddExerciseEvent extends _$ExerciseSearchAddExerciseEvent {
  const factory ExerciseSearchAddExerciseEvent.addExercise(
      {required String exerciseId,
        required DateTime selectedDate,
        required String clientId,
      required String exerciseName}
      ) = AddExercise;
}