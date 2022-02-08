import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/exercise_search/event/exercise_search_event.dart';
import 'package:personal_trainer/app/screen/exercise_search/state/exercise_search_state.dart';
import 'package:personal_trainer/app/util/event_transformer.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchBloc
    extends Bloc<ExerciseSearchEvent, ExerciseSearchState> {
  final ExerciseSearchProvider searchProvider =
  GetIt.I.get<ExerciseSearchProvider>();
  List<String> _filters = [];

  ExerciseSearchBloc(ExerciseSearchState initialState) : super(initialState) {
    on<EmptySearch>((event, emit) async {
      try {
        emit(ExerciseSearchState.loading());
        List<Exercise> exercises = await searchProvider.getAllExercises(filters: _filters);
        emit(ExerciseSearchState.content(exercises: exercises));
      } catch (error) {
        emit(ExerciseSearchState.error(error: error.toString()));
      }
    },
        transformer:
        debounce(Duration(milliseconds: DurationConst.longerDebounceTime)));

    on<SearchForInput>((event, emit) async {
      try {
        emit(ExerciseSearchState.loading());
        List<Exercise> exercises =
        await searchProvider.searchForExercises(query: event.input, filters: _filters);
        emit(ExerciseSearchState.content(exercises: exercises));
      } catch (error) {
        emit(ExerciseSearchState.error(error: error.toString()));
      }
    },
        transformer:
        debounce(Duration(milliseconds: DurationConst.debounceTime)));

    on<FilterClick>((event, emit) async {
      try {
        _filters.contains(event.filterName) ? _filters.removeWhere((
            element) => element == event.filterName) :_filters.add(event.filterName);
        emit(ExerciseSearchState.filterReload());
      } catch (error) {
        emit(ExerciseSearchState.error(error: error.toString()));
      }
    });
  }
}
