import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchCubit extends Cubit<ExerciseSearchState> {
  ExerciseSearchCubit(ExerciseSearchState initialState, this.searchProvider)
      : super(initialState);

  final ExerciseSearchProvider searchProvider;

  void searchExercises(String query) async {
    searchProvider.searchForExercises(query).then((exercises) {
      emit(SearchSuccess(exercises));
    }
        // ,onError:  print("error");
        );
  }

  void getAllExercises() {
    searchProvider.getAllExercises().then((exercises) {
      emit(SearchSuccess(exercises));
    }
        // ,onError:  print("error");
        );
  }

  void addExercise(String id, DateTime selectedDay) {
    searchProvider.addExercise(id, selectedDay).then((value) {
      emit(ExerciseAddedEvent());
    }
        // ,onError:  print("error");
        );
  }
}

class ExerciseSearchState {}

class SearchSuccess extends ExerciseSearchState {
  final List<Exercise> exercises;

  SearchSuccess(this.exercises);

}

class SearchFailure extends ExerciseSearchState {}

class InitialEmptySearch extends ExerciseSearchState {}

class ExerciseAddedEvent extends ExerciseSearchState {}
