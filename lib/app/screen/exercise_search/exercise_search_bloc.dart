import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_state.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';

import 'exercise_search_event.dart';

class ExerciseSearchBloc
    extends Bloc<ExerciseSearchEvent, ExerciseSearchState> {
  final ExerciseSearchProvider searchProvider = GetIt.I.get<ExerciseSearchProvider>();
  List<String> listOfExpandedExercises = [];

  ExerciseSearchBloc(ExerciseSearchState initialState) : super(initialState) {
    on<ExerciseSearchEmpty>((event, emit) async {
      await searchProvider.getAllExercises().then((exercises) {
        emit(ExerciseSearchSuccess(exercises));
      }).catchError((error) {
        emit(ExerciseSearchFailure(error.toString()));
        Log.e(error.toString());
      });
    });

    on<ExerciseSearchForInput>((event, emit) async {
      await searchProvider.searchForExercises(event.input).then((exercises) {
        emit(ExerciseSearchSuccess(exercises));
      }).catchError((error) {
        emit(ExerciseSearchFailure(error));
        Log.e(error.toString());
      });
    });

    on<ExerciseSearchExpansionPanelClicked>((event, emit) {
      String id = event.exerciseId;
      if (listOfExpandedExercises.contains(id)) {
        listOfExpandedExercises.remove(id);
      } else {
        listOfExpandedExercises.add(id);
      }
      emit(
          ExerciseSearchExpansionPanelClickSuccess(exercises: event.exercises));
    });
  }
}
