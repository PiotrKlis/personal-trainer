import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/firebase_loading/firebase_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/util/response.dart';

class FirebaseCubit extends Cubit<FirebaseState> {
  FirebaseCubit(FirebaseState initialState, this.firebaseProvider)
      : super(initialState);

  final FirebaseProvider firebaseProvider;

  void firebaseInit() async {
    var response = await firebaseProvider.init();
    if (response is Success) {
      emit(FirebaseInitialized());
    } else if (response is Failure) {
      emit(FirebaseNotInitialized(response.error));
    } else {
      emit(FirebaseNotInitialized("firebaseInit undefined error"));
    }
  }
}
