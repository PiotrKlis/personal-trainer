import 'package:get_it/get_it.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

import 'exercise_mapper.dart';

class UserExerciseMapper {
  final _exerciseMapper = GetIt.I.get<ExerciseMapper>();

  UserExercise map(Map<String, dynamic> data) {
    return UserExercise(
        id: data['id'],
        index: data['index'],
        reps: data['reps'],
        sets: data['sets'],
        exercise: _exerciseMapper.mapToExercise(data['exercise']));
  }
}
