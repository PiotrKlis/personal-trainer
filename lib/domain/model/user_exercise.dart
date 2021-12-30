import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise.dart';

part 'user_exercise.freezed.dart';

@freezed
class UserExercise with _$UserExercise {
  const factory UserExercise({
    required String id,
    required int index,
    required int reps,
    required int sets,
    required Exercise exercise
}) = _UserExercise;
}