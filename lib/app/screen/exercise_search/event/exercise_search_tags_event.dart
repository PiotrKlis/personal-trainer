import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercise_search_tags_event.freezed.dart';

@freezed
class ExerciseSearchTagsEvent with _$ExerciseSearchTagsEvent {
  const factory ExerciseSearchTagsEvent.getTags() = GetTags;
  const factory ExerciseSearchTagsEvent.applyFilter({required String name}) = ApplyFilter;
}