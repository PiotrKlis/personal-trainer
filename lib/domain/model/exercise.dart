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
class Exercise with _$Exercise {
  const factory Exercise(
      {required String id,
      required String title,
      required String videoPath,
      required List<String> tags}) = _Exercise;
}
