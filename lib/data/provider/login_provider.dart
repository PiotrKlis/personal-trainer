import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/app_user.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class LoginProvider {
  Future<UserType> loginUser(String email, String password) async {
    UserCredential credentials = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return getUserType(credentials.user?.uid);
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

  Future<String> getUserId() async {
    var userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId != null) {
      return userId;
    } else {
      return Future.error("User is not logged in");
    }
  }

  Future<UserType> getUserType(String? id) async {
    var userSnapshot = await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(id)
        .get();

    UserType userType = userSnapshot.get('userType').toString().userType;
    return Future.value(userType);
  }
}
