abstract class ExerciseSearchEvent {}

class ExerciseSearchExerciseAdded extends ExerciseSearchEvent {
  final exerciseId;
  final selectedDate;
  final clientId;

  ExerciseSearchExerciseAdded(
      {required this.exerciseId,
      required this.selectedDate,
      required this.clientId});
}

class ExerciseSearchExpansionPanelClicked extends ExerciseSearchEvent {
  final exerciseId;
  final exercises;

  ExerciseSearchExpansionPanelClicked(
      {required this.exerciseId, required this.exercises});
}

class ExerciseSearchEmpty extends ExerciseSearchEvent {}

class ExerciseSearchForInput extends ExerciseSearchEvent {
  final String input;

  ExerciseSearchForInput({required this.input});
}
