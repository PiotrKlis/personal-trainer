import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_search_tags_state.freezed.dart';

@freezed
class ExerciseSearchTagsState with _$ExerciseSearchTagsState {
  const factory ExerciseSearchTagsState.initial() = _Initial;

  const factory ExerciseSearchTagsState.content({required List<String> tags}) =
      _Content;

  const factory ExerciseSearchTagsState.error({required String error}) = _Error;
}
