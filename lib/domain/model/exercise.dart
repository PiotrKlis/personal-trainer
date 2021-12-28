// class Exercise {
//   final String id;
//   final String title;
//   final String videoPath;
//   final List<String> tags;
//   final int reps;
//   final int sets;
//
//   Exercise(
//       {required this.reps,
//       required this.sets,
//       required this.id,
//       required this.title,
//       required this.videoPath,
//       required this.tags});
// }
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  factory Exercise(
      {required int reps,
      required int sets,
      required String id,
      required String title,
      required String videoPath,
      required List<String> tags,
      required String userExerciseId}) = _Exercise;
}
