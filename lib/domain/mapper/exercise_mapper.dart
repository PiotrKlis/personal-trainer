import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseMapper {
  Exercise mapToExercise(Map<String, dynamic> data) {
    return Exercise(
        id: data['id'],
        title: data['title'],
        videoPath: data['videoPath'],
        tags: List.from(data['tags']));
  }
}
