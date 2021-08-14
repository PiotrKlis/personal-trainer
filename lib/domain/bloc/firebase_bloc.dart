import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/event/firebase_event.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';

class FirebaseBloc extends Bloc<FirebaseEvent, FirebaseState> {
  final FirebaseProvider firebaseProvider;

  FirebaseBloc(FirebaseState initialState, this.firebaseProvider)
      : super(initialState);

  @override
  Stream<FirebaseState> mapEventToState(FirebaseEvent event) async* {
    switch (event.runtimeType) {
      case FirebaseRegisterEvent:
        yield FirebaseLoading();
        yield await firebaseProvider.init();
    }
  }
}
