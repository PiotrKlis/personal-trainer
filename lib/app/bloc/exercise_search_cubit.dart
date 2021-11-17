import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_state.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchCubit extends Cubit<ExerciseSearchState> {
  ExerciseSearchCubit(ExerciseSearchState initialState, this.searchProvider)
      : super(initialState);

  final ExerciseSearchProvider searchProvider;
  List<String> listOfExpandedExercises = [];
  List<Exercise> listOfExercises = [];

  void searchExercises(String query) async {
    searchProvider.searchForExercises(query).then((exercises) {
      listOfExercises = exercises;
      emit(SearchSuccess(exercises));
    }).catchError((error) {
      Log.e(error.toString());
    });
  }

  void getAllExercises() {
    searchProvider.getAllExercises().then((exercises) {
      listOfExercises = exercises;
      emit(SearchSuccess(exercises));
    }).catchError((error) {
      Log.e(error.toString());
    });
  }

  void addExercise(
      {required String exerciseId,
      required DateTime selectedDay,
      required String clientId}) {
    searchProvider
        .addExercise(
            clientId: clientId,
            selectedDate: selectedDay,
            exerciseId: exerciseId)
        .then((value) {
      emit(ExerciseAddedEvent());
    }).catchError((error) {
      Log.e(error.toString());
    });
  }

  void expansionCallback(int index, bool isExpanded) {
    String id = listOfExercises[index].id;
    if (listOfExpandedExercises.contains(id)) {
      listOfExpandedExercises.remove(id);
    } else {
      listOfExpandedExercises.add(id);
    }
    Log.d(listOfExpandedExercises.toString());
    emit(CardExpansionEvent(listOfExpandedExercises));
  }
}
