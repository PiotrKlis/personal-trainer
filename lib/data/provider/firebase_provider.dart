import 'package:firebase_core/firebase_core.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';

class FirebaseProvider {
  Future<FirebaseState> init() async {
    await Firebase.initializeApp();
    return isFirebaseInitialized();
  }

  FirebaseState isFirebaseInitialized() {
    try {
      Firebase.app();
      return FirebaseInitialized();
    } catch (throwable) {
      return FirebaseNotInitialized(throwable.toString());
    }
  }
}
