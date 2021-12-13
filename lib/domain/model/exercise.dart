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
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  factory Exercise({reps, sets, id, title, videoPath, tags}) = _Exercise;
}
