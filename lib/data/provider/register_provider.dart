import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/register_data.dart';

@injectable
class RegisterProvider {
  Future registerTrainerAndClient(RegisterData registerData) async {
    try {
      await _createUser(registerData.email, registerData.password);
      await _addTrainerDataToDB(
          registerData.email, registerData.displayName, registerData.password);
      await _addClientDataToDB(registerData.email, registerData.displayName,
          registerData.password, registerData.trainerEmail);
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
      return Future.value();
    } catch (error) {
      if (error is FirebaseAuthException) {
        if (error.code != 'email-already-in-use') {
          return Future.error(error, StackTrace.current);
        }
      }
      FirebaseAuth.instance.currentUser?.delete();
      _deleteUserData();
      return Future.error(error, StackTrace.current);
    }
  }

  Future registerClient(String userEmail, String name, String password,
      String trainerEmail) async {
    try {
      await _createUser(userEmail, password);
      await _addClientDataToDB(userEmail, name, password, trainerEmail);
      return Future.value();
    } catch (error) {
      _deleteUserData();
      FirebaseAuth.instance.currentUser?.delete();
      return Future.error(error, StackTrace.current);
    }
  }

  _deleteUserData() async {
    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(FirebaseAuth.instance.currentUser?.email ?? "")
        .delete()
        .then((value) => print("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  _createUser(String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  _addClientDataToDB(String userEmail, String name, String password,
      String trainerEmail) async {
    await _createClientDataInDb(userEmail, name, trainerEmail);
    await _updateTrainerDataWithNewClientData(trainerEmail);
  }

  _addTrainerDataToDB(String userEmail, String name, String password) async {
    var id = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(id)
        .collection(FirebaseConstants.trainerCollection)
        .doc(FirebaseConstants.dataCollection)
        .set({
      'id': id,
      'name': name,
      'email': userEmail,
      'userType': 'trainer'
    });

    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(id)
        .set({'email': userEmail, 'id': id});
  }

  _createClientDataInDb(
      String userEmail, String name, String trainerEmail) async {
    if (trainerEmail.isEmpty) {
      trainerEmail = FirebaseAuth.instance.currentUser!.email!;
    }
    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .where('email', isEqualTo: trainerEmail)
        .get()
        .then((trainerData) {
      var trainerId = trainerData.docs.single.get('id');
      var userId = FirebaseAuth.instance.currentUser!.uid;

      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(userId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.dataCollection)
          .set({
        'id': userId,
        'name': name,
        'email': userEmail,
        'trainerEmail': trainerEmail,
        'trainerId': trainerId,
        'userType': 'client'
      });

      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(userId)
          .set({'email': userEmail, 'id': userId});
    }).catchError((error) {
      throw Exception("Wrong trainer email");
    });
  }

  _updateTrainerDataWithNewClientData(String trainerEmail) async {
    if (trainerEmail.isEmpty) {
      trainerEmail = FirebaseAuth.instance.currentUser!.email!;
    }
    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .where('email', isEqualTo: trainerEmail)
        .get()
        .then((trainerData) {
      var trainerId = trainerData.docs.single.get('id');

      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(trainerId)
          .collection(FirebaseConstants.trainerCollection)
          .doc(FirebaseConstants.dataCollection)
          .set({
        "clients":
            FieldValue.arrayUnion([FirebaseAuth.instance.currentUser!.uid])
      }, SetOptions(merge: true));
    }).catchError((error) {
      throw Exception("Wrong trainer email");
    });
  }
}
