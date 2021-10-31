import 'package:firebase_core/firebase_core.dart';
import 'package:personal_trainer/data/util/response.dart';

class FirebaseProvider {
  Future init() async {
    await Firebase.initializeApp();
    return _isFirebaseInitialized();
  }

  Future _isFirebaseInitialized() {
    try {
      Firebase.app();
      return Future.value();
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }
}
