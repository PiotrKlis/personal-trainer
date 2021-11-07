import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/app_user.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

class LoginProvider {
  Future<AppUser> loginUser(String email, String password) async {
    try {
      return FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((credentials) {
        var userId = credentials.user?.uid;
        return getUserData(userId);
      });
    } catch (error) {
      return Future.error(error);
    }
  }

  //todo add signOut feature
  // Future<Response> signOut() async {
  //   try {
  //     await FirebaseAuth.instance.signOut();
  //     return Success();
  //   } catch (throwable) {
  //     return Failure(throwable.toString());
  //   }
  // }

  Future<User> getUser() async {
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return user;
    } else {
      return Future.error("User is not logged in");
    }
    // return FirebaseAuth.instance.authStateChanges().single.then((user) {
    //   if (user != null) {
    //     return user;
    //   } else {
    //     return Future.error("User is not logged in");
    //   }
    // });
  }

  String? getUserId() => FirebaseAuth.instance.currentUser?.uid;

  Future<AppUser> getUserData(String? email) async {
    try {
      var trainerData = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(email)
          .collection("trainer")
          .doc("data")
          .get();

      var clientData = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(email)
          .collection("trainer")
          .doc("data")
          .get();

      if (trainerData.exists && clientData.exists) {
        return Trainer(
            id: trainerData.data()?['id'],
            email: trainerData.data()?['email'],
            name: trainerData.data()?['name'],
            clientEmails: List.from(trainerData.data()?['clients']));
      } else if (!trainerData.exists && clientData.exists) {
        return Client(
            id: clientData.data()?['id'],
            email: clientData.data()?['email'],
            name: clientData.data()?['name'],
            trainerEmail: clientData.data()?['trainerEmail']);
      } else {
        return Future.error("No user data found");
      }
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }
}
