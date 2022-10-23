import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/trainer_search/event/trainer_search_event.dart';
import 'package:personal_trainer/app/screen/trainer_search/state/trainer_search_state.dart';

class TrainerSearchBloc extends Bloc<TrainerSearchEvent, TrainerSearchState> {
  TrainerSearchBloc(TrainerSearchState initialState) : super(initialState) {
    on<Init>((state, emit) async {});
  }
}
