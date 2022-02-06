import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/exercise_search/event/exercise_search_add_exercise_event.dart';
import 'package:personal_trainer/app/screen/exercise_search/state/exercise_search_add_exercise_state.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';

class ExerciseSearchAddExerciseBloc extends Bloc<ExerciseSearchAddExerciseEvent,
    ExerciseSearchAddExerciseState> {
  final ExerciseSearchProvider searchProvider =
      GetIt.I.get<ExerciseSearchProvider>();

  ExerciseSearchAddExerciseBloc(
      ExerciseSearchAddExerciseState initialState, int listLength)
      : super(initialState) {
    on<AddExercise>((event, emit) async {
      await searchProvider
          .addExercise(
              clientId: event.clientId,
              index: listLength,
              selectedDate: event.selectedDate,
              exerciseId: event.exerciseId)
          .then((value) {
        listLength += 1;
        emit(ExerciseSearchAddExerciseState.exerciseAddedSuccess(exerciseName: event.exerciseName));
        emit(ExerciseSearchAddExerciseState.initial());
      }).catchError((error) {
        emit(ExerciseSearchAddExerciseState.exerciseAddedFailure(exerciseName: event.exerciseName));
      });
    });
  }
}
