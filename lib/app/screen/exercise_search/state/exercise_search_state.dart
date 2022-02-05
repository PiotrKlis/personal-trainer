import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

part 'exercise_search_state.freezed.dart';

@freezed
class ExerciseSearchState with _$ExerciseSearchState {
  const factory ExerciseSearchState.loading() = _Loading;
  const factory ExerciseSearchState.initial() = _Initial;

  const factory ExerciseSearchState.content(
      {required List<Exercise> exercises}) = _Content;

  const factory ExerciseSearchState.error({required String error}) = _Error;
}
