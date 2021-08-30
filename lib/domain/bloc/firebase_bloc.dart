import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/util/response.dart';

class FirebaseCubit extends Cubit<FirebaseState> {
  FirebaseCubit(FirebaseState initialState, this.firebaseProvider)
      : super(initialState);

  final FirebaseProvider firebaseProvider;

  Future<FirebaseState> firebaseInit() async {
    var response = await firebaseProvider.init();
    if (response is Success) {
      return FirebaseInitialized();
    } else if (response is Failure) {
      return FirebaseNotInitialized(response.error);
    } else {
      return FirebaseNotInitialized("firebaseInit undefined error");
    }
  }
}
