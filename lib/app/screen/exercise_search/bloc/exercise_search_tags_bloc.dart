import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/event/exercise_search_tags_event.dart';
import 'package:personal_trainer/app/screen/exercise_search/state/exercise_search_tags_state.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';

class ExerciseSearchTagsBloc
    extends Bloc<ExerciseSearchTagsEvent, ExerciseSearchTagsState> {
  final ExerciseSearchProvider _exerciseSearchProvider =
      ExerciseSearchProvider();

  ExerciseSearchTagsBloc(ExerciseSearchTagsState initialState)
      : super(initialState) {
    on<GetTags>((event, emit) async {
      try {
        List<String> tags = await _exerciseSearchProvider.getAllTags();
        emit(ExerciseSearchTagsState.content(tags: tags));
      } catch (error) {
        emit(ExerciseSearchTagsState.error(error: error.toString()));
      }
    });

    on<ApplyFilter>((event, emit) async {
      //apply filters
      // let searchBloc know that filter has been added and call
    });
  }
}
