import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';

class ExerciseSearchCubit extends Cubit<ExerciseSearchState> {
  ExerciseSearchCubit(ExerciseSearchState initialState, this.searchProvider)
      : super(initialState);

  final ExerciseSearchProvider searchProvider;

  void searchExercises(String query) {
    var response = searchProvider.searchFor(query);
    if (response is SearchSuccess) {

    } else {

    }
  }
}

class SearchSuccess {
}

class ExerciseSearchState {}
