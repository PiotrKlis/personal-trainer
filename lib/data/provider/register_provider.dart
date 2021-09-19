import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/data/util/response.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterProvider {
  Future<Response> registerTrainerAndClient(
      String userEmail,
      String name,
      String password,
      String trainerEmail,
      String? additionalPassword,
      UserType? userType) async {
    try {
      await _createUser(userEmail, password);
      await _addTrainerDataToDB(userEmail, name, password);
      await _addClientDataToDB(userEmail, name, password, userEmail);
      return Success();
    } catch (error) {
      return Failure(error.toString());
    }
  }

  Future<Response> registerClient(String userEmail, String name,
      String password, String trainerEmail) async {
    try {
      await _createUser(userEmail, password);
      await _addClientDataToDB(userEmail, name, password, trainerEmail);
      return Success();
    } catch (error) {
      return Failure(error.toString());
    }
  }

  Future<void> _createUser(String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> _addClientDataToDB(String userEmail, String name,
      String password, String trainerEmail) async {
    await _createClientDataInDb(userEmail, name, trainerEmail);
    await _updateTrainerDataWithNewClientData(trainerEmail, userEmail);
  }

  Future<void> _addTrainerDataToDB(
      String userEmail, String name, String password) async {
    await FirebaseFirestore.instance
        .collection(firebaseCollectionName)
        .doc(userEmail)
        .collection("trainer")
        .doc("data")
        .set({
      'id': FirebaseAuth.instance.currentUser!.uid,
      'name': name,
      'email': userEmail,
      'userType': 'trainer'
    });
  }

  Future<void> _createClientDataInDb(
      String userEmail, String name, String trainerEmail) async {
    await FirebaseFirestore.instance
        .collection(firebaseCollectionName)
        .doc(userEmail)
        .collection("client")
        .doc("data")
        .set({
      'id': FirebaseAuth.instance.currentUser!.uid,
      'name': name,
      'email': userEmail,
      'trainerEmail': trainerEmail,
      'userType': 'client'
    });
  }

  Future<void> _updateTrainerDataWithNewClientData(
      String trainerEmail, String userEmail) async {
    //TODO: check if trainerEmail is valid, throw if not
    var fieldName = 'clients';
    await FirebaseFirestore.instance
        .collection(firebaseCollectionName)
        .doc(trainerEmail)
        .collection("trainer")
        .doc("data")
        .set({
      fieldName: FieldValue.arrayUnion([userEmail])
    }, SetOptions(merge: true));
  }
}
