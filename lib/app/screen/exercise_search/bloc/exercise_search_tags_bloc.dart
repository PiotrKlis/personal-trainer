import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/event/exercise_search_tags_event.dart';
import 'package:personal_trainer/app/screen/exercise_search/state/exercise_search_tags_state.dart';

class ExerciseSearchTagsBloc
    extends Bloc<ExerciseSearchTagsEvent, ExerciseSearchTagsState> {
  // Add SearchBloc

  ExerciseSearchTagsBloc(ExerciseSearchTagsState initialState)
      : super(initialState) {
    on<GetTags>((event, emit) async {
      //get all tags
    });

    on<ApplyFilter>((event, emit) async {
      //apply filters
      // let searchBloc know that filter has been added and call
    });
  }
}
