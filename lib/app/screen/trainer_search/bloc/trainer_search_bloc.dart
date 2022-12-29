import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/core/dependency_injection/get_it_config.dart';
import 'package:personal_trainer/app/core/navigation/app_router.gr.dart';
import 'package:personal_trainer/app/screen/trainer_search/event/trainer_search_event.dart';
import 'package:personal_trainer/app/screen/trainer_search/state/trainer_search_state.dart';

class TrainerSearchBloc extends Bloc<TrainerSearchEvent, TrainerSearchState> {
  TrainerSearchBloc(TrainerSearchState initialState) : super(initialState) {
    on<Init>((state, emit) async {});
    on<NavigateToFilterScreen>((state, emit) async {
      getIt.get<AppRouter>().push(SearchFilterRoute());
    });
    on<NavigateToExerciseScreen>((state, emit) async {
      getIt.get<AppRouter>().push(AccountChooseRoute());
    });
    on<NavigateToLogin>((state, emit) async {
      getIt.get<AppRouter>().push(LoginRoute());
    });
  }
}
