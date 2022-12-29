import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_search_event.freezed.dart';

@freezed
class TrainerSearchEvent with _$TrainerSearchEvent {
  const factory TrainerSearchEvent.init() = Init;

  const factory TrainerSearchEvent.navigateToFilterScreen() =
      NavigateToFilterScreen;

  const factory TrainerSearchEvent.navigateToExerciseScreen() =
      NavigateToExerciseScreen;

  const factory TrainerSearchEvent.navigateToLogin() = NavigateToLogin;
}
