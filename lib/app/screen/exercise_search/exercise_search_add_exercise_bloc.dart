import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';

class ExerciseSearchAddExerciseBloc extends Bloc<ExerciseSearchAddExerciseEvent,
    ExerciseSearchAddExerciseState> {
  final ExerciseSearchProvider searchProvider =
      GetIt.I.get<ExerciseSearchProvider>();

  ExerciseSearchAddExerciseBloc(ExerciseSearchAddExerciseState initialState)
      : super(initialState) {
    on<ExerciseSearchExerciseAdded>((event, emit) async {
      await searchProvider
          .addExercise(
              clientId: event.clientId,
              selectedDate: event.selectedDate,
              exerciseId: event.exerciseId)
          .then((value) {
        emit(
            ExerciseSearchAddExerciseSuccess(exerciseName: event.exerciseName));
      }).catchError((error) {
        emit(ExerciseSearchAddExerciseFailure());
        Log.e(error.toString());
      });
    });
  }
}

abstract class ExerciseSearchAddExerciseState {}

class ExerciseSearchAddStarted extends ExerciseSearchAddExerciseState {}

class ExerciseSearchAddExerciseSuccess extends ExerciseSearchAddExerciseState {
  final exerciseName;

  ExerciseSearchAddExerciseSuccess({required this.exerciseName});
}

class ExerciseSearchAddExerciseFailure extends ExerciseSearchAddExerciseState {}

abstract class ExerciseSearchAddExerciseEvent {}

class ExerciseSearchExerciseAdded extends ExerciseSearchAddExerciseEvent {
  final exerciseId;
  final exerciseName;
  final selectedDate;
  final clientId;

  ExerciseSearchExerciseAdded(
      {required this.exerciseName,
      required this.exerciseId,
      required this.selectedDate,
      required this.clientId});
}
