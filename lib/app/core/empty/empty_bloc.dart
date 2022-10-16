import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/core/empty/empty_event.dart';
import 'package:personal_trainer/app/core/empty/empty_state.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';

class EmptyBloc extends Bloc<EmptyEvent, EmptyState> {

  EmptyBloc(EmptyState initialState) : super(initialState) {
    // on<Initial>((event, emit) async {
    //   // no-op
    // });
  }
}
