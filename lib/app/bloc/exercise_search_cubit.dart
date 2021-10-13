import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchCubit extends Cubit<ExerciseSearchState> {
  ExerciseSearchCubit(ExerciseSearchState initialState, this.searchProvider)
      : super(initialState);

  final ExerciseSearchProvider searchProvider;

  void searchExercises(String query) async {
    searchProvider.searchForExercises(query).then((value) => , onError: );
  }
}

class SearchSuccess {
}

class ExerciseSearchState {}
