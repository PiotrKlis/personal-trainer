import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

import 'exercise_mapper.dart';

@injectable
class UserExerciseMapper {
  final _exerciseMapper = GetIt.I.get<ExerciseMapper>();

  UserExercise map(
  {required Map<String, dynamic> userData, required Map<String, dynamic> exerciseData}) {
    return UserExercise(
        id: userData['id'],
        index: userData['index'],
        reps: userData['reps'],
        sets: userData['sets'],
        exercise: _exerciseMapper.mapToExercise(exerciseData));
  }
}
