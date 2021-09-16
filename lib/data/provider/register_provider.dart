import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/app/state/register_state.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/data/util/response.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterProvider {
  Future<Response> registerClient(String userEmail, String name,
      String password, String trainerEmail) async {
    try {
      await _createUser(userEmail, password);
      await _addNewClientData(trainerEmail, userEmail, name);
      return Success();
    } catch (error) {
      return Failure(error.toString());
    }
  }

  Future<Response> registerTrainer(String userEmail, String name,
      String password) async {
    try {
      await _createUser(userEmail, password);
      await _createTrainerDataInDb(firebaseCollectionName, userEmail, name);
      return Success();
    } catch (error) {
      return Failure(error.toString());
    }
  }

  Future<void> _createUser(String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> _addNewClientData(String trainerEmail, String userEmail, String name) async {
    await _createClientDataInDb(
        firebaseCollectionName, userEmail, name, trainerEmail);
    await _updateTrainerDataWithNewClientData(
        firebaseCollectionName, trainerEmail, userEmail);
  }

  Future<void> _createTrainerDataInDb(
      String collectionName, String userEmail, String name) async {
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(userEmail)
        .set({
      'id': FirebaseAuth.instance.currentUser!.uid,
      'name': name,
      'email': userEmail,
      'userType': 'trainer'
    });
  }

  Future<void> _createClientDataInDb(String collectionName, String userEmail,
      String name, String trainerEmail) async {
    await FirebaseFirestore.instance.collection(collectionName).doc(userEmail).set({
      'id': FirebaseAuth.instance.currentUser!.uid,
      'name': name,
      'email': userEmail,
      'trainerEmail': trainerEmail,
      'userType': 'client'
    });
  }

  Future<void> _updateTrainerDataWithNewClientData(
      String collectionName, String trainerEmail, String userEmail) async {
    //TODO: check if trainerEmail is valid, throw if not
    var fieldName = 'clients';
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(trainerEmail)
        .set({
      fieldName: FieldValue.arrayUnion([userEmail])
    }, SetOptions(merge: true));
  }
}
