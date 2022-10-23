import 'package:freezed_annotation/freezed_annotation.dart';
part 'trainer_search_state.freezed.dart';

@freezed
class TrainerSearchState with _$TrainerSearchState {
  const factory TrainerSearchState.initial() = Initial;
}
