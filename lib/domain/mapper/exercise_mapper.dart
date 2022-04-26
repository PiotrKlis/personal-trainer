import 'package:injectable/injectable.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

@injectable
class ExerciseMapper {
  Exercise mapToExercise(Map<String, dynamic> data) {
    return Exercise(
        id: data['id'],
        title: data['title'],
        playbackId: data['playbackId'],
        tags: List.from(data['tags']));
  }
}
