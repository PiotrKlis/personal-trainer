import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/app_user.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

class LoginProvider {
  Future<LoginState> loginUser(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return await _getUserData(email);
    } on FirebaseAuthException catch (error) {
      return LoginFailed(error.toString());
    }
  }

  Future<LoginState> _getUserData(String email) async {
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
        break;
      case 'client':
        appUser = Client(
            id: value.data()?['id'],
            email: value.data()?['email'],
            name: value.data()?['name'],
            trainerEmail: value.data()?['trainerEmail']);
        break;
      default:
        throw ("Wrong userType");
    }
    return LoginSuccess(appUser);
  }

  Stream<LoginState> signOut() async* {
    yield LoginLoading();
    FirebaseAuth.instance.signOut();
  }

  bool isUserLoggedIn() => FirebaseAuth.instance.currentUser != null;
}
