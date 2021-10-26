import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/data/util/response.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

class LoginProvider {
  Future<Response> loginUser(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return await getUserData(email);

    } on FirebaseAuthException catch (error) {
      return Future.error(error);
    }
  }

  Future<Response> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return Success();
    } catch (throwable) {
      return Failure(throwable.toString());
    }
  }

  Response isUserLoggedIn() {
    if (FirebaseAuth.instance.currentUser != null) {
      return Success();
    } else {
      return Failure("User is not logged in");
    }
  }

  String? getUserEmail() => FirebaseAuth.instance.currentUser?.email;

  Future<Response> getUserData(String? email) async {
    try {
      var trainerData = await FirebaseFirestore.instance
          .collection(firebaseCollectionName)
          .doc(email)
          .collection("trainer")
          .doc("data")
          .get();

      var clientData = await FirebaseFirestore.instance
          .collection(firebaseCollectionName)
          .doc(email)
          .collection("trainer")
          .doc("data")
          .get();

      if (trainerData.exists && clientData.exists) {
        return UserLoginSuccess(Trainer(
            id: trainerData.data()?['id'],
            email: trainerData.data()?['email'],
            name: trainerData.data()?['name'],
            clientEmails: List.from(trainerData.data()?['clients'])));
      } else if (!trainerData.exists && clientData.exists) {
        return UserLoginSuccess(Client(
            id: clientData.data()?['id'],
            email: clientData.data()?['email'],
            name: clientData.data()?['name'],
            trainerEmail: clientData.data()?['trainerEmail']));
      } else {
        throw Failure("No user data found");
      }
    } catch (error) {
      return Failure(error.toString());
    }
  }
}
