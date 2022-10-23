import 'package:freezed_annotation/freezed_annotation.dart';
part 'trainer_search_event.freezed.dart';

@freezed
class TrainerSearchEvent with _$TrainerSearchEvent {
  const factory TrainerSearchEvent.init() = Init;
}
