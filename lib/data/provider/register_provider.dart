import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/register_data.dart';

class RegisterProvider {
  Future registerTrainerAndClient(RegisterData registerData) async {
    try {
      await _createUser(registerData.email, registerData.password);
      await _addTrainerDataToDB(
          registerData.email, registerData.displayName, registerData.password);
      await _addClientDataToDB(registerData.email, registerData.displayName,
          registerData.password, registerData.trainerEmail);
      return Future.value();
    } catch (error) {
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
    var id = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(id)
        .collection(FirebaseConstants.clientCollection)
        .doc(FirebaseConstants.dataCollection)
        .set({
      'id': id,
      'name': name,
      'email': userEmail,
      'trainerEmail': trainerEmail,
      'userType': 'client'
    });

    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(id)
        .set({'email': userEmail, 'id': id});
  }

  _updateTrainerDataWithNewClientData(String trainerEmail) async {
    if (trainerEmail.isEmpty) {
      trainerEmail = FirebaseAuth.instance.currentUser!.email!;
    }
    var trainerData = await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .where('email', isEqualTo: trainerEmail)
        .get();

    var id = trainerData.docs.single.get('id');

    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(id)
        .collection(FirebaseConstants.trainerCollection)
        .doc(FirebaseConstants.dataCollection)
        .get()
        .then((data) {
      if (data.exists) {
        FirebaseFirestore.instance
            .collection(FirebaseConstants.usersCollection)
            .doc(id)
            .collection(FirebaseConstants.trainerCollection)
            .doc(FirebaseConstants.dataCollection)
            .set({
          "clients":
              FieldValue.arrayUnion([FirebaseAuth.instance.currentUser!.uid])
        }, SetOptions(merge: true));
      } else {
        throw Exception("Trainer email is invalid");
      }
    });
  }
}
