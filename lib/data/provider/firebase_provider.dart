import 'package:firebase_core/firebase_core.dart';
import 'package:personal_trainer/data/util/response.dart';

class FirebaseProvider {
  Future<Response> init() async {
    await Firebase.initializeApp();
    return isInitialized();
  }

  Response isInitialized() {
    try {
      Firebase.app();
      return Success();
    } catch (throwable) {
      return Failure(throwable.toString());
    }
  }
}
