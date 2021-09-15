import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/data/util/response.dart';
import 'package:personal_trainer/domain/model/app_user.dart';
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
      return Failure(error.toString());
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
      late AppUser appUser;
      var value = await FirebaseFirestore.instance
          .collection(firebaseCollectionName)
          .doc(email)
          .get();
      var userType = value.data()?['userType'];
      switch (userType) {
        case 'trainer':
          appUser = Trainer(
              id: value.data()?['id'],
              email: value.data()?['email'],
              name: value.data()?['name'],
              clientEmails: List.from(value.data()?['clients']));
          return UserLoginSuccess(appUser);
        case 'client':
          appUser = Client(
              id: value.data()?['id'],
              email: value.data()?['email'],
              name: value.data()?['name'],
              trainerEmail: value.data()?['trainerEmail']);
          return UserLoginSuccess(appUser);
        default:
          return Failure("Wrong userType");
      }
    } catch (throwable) {
      return Failure(throwable.toString());
    }
  }
}