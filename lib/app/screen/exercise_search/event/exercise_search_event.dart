import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_search_event.freezed.dart';

@freezed
class ExerciseSearchEvent with _$ExerciseSearchEvent {
  const factory ExerciseSearchEvent.emptySearch() = EmptySearch;

  const factory ExerciseSearchEvent.searchForInput({required String input}) =
      SearchForInput;

  const factory ExerciseSearchEvent.filterClick({required String filterName}) =
      FilterClick;

  const factory ExerciseSearchEvent.reloadLastSearch() = ReloadLastSearch;
}
