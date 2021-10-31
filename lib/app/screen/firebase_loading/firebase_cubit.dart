import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/firebase_loading/firebase_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';

class FirebaseCubit extends Cubit<FirebaseState> {
  FirebaseCubit(FirebaseState initialState, this.firebaseProvider)
      : super(initialState);

  final FirebaseProvider firebaseProvider;

  firebaseInit() {
    firebaseProvider
        .init()
        .then((_) => emit(FirebaseInitialized()))
        .catchError((error) => emit(FirebaseNotInitialized(error)));
  }
}
