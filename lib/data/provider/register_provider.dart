import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_trainer/app/state/register_state.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/user_type.dart';


class RegisterProvider {
  Stream<RegisterState> registerUser(String userEmail, String name,
      String password, String trainerEmail, UserType userType) async* {
    yield RegisterLoading();
    try {
      await _createUser(userEmail, password);
      _addNewUserData(userType, trainerEmail, userEmail, name);
      yield Registered();
    } on FirebaseAuthException catch (error) {
      yield RegisterFailed(error.toString());
    }
  }

  Future<void> _createUser(String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  void _addNewUserData(
      UserType userType, String trainerEmail, String userEmail, String name) {
    switch (userType) {
      case UserType.TRAINER:
        _createTrainerDataInDb(firebaseCollectionName, userEmail, name);
        break;
      case UserType.CLIENT:
        _createClientDataInDb(
            firebaseCollectionName, userEmail, name, trainerEmail);
        _updateTrainerDataWithNewClientData(
            firebaseCollectionName, trainerEmail, userEmail);
        break;
    }
  }

  void _createTrainerDataInDb(
      String collectionName, String userEmail, String name) {
    FirebaseFirestore.instance.collection(collectionName).doc(userEmail).set({
      'id': FirebaseAuth.instance.currentUser!.uid,
      'name': name,
      'email': userEmail,
      'userType': 'trainer'
    });
  }

  void _createClientDataInDb(String collectionName, String userEmail,
      String name, String trainerEmail) {
    FirebaseFirestore.instance.collection(collectionName).doc(userEmail).set({
      'id': FirebaseAuth.instance.currentUser!.uid,
      'name': name,
      'email': userEmail,
      'trainerEmail': trainerEmail,
      'userType': 'client'
    });
  }

  void _updateTrainerDataWithNewClientData(
      String collectionName, String trainerEmail, String userEmail) {
    //TODO: check if trainerEmail is valid, throw if not
    var fieldName = 'clients';
    FirebaseFirestore.instance
        .collection(collectionName)
        .doc(trainerEmail)
        .set({
      fieldName: FieldValue.arrayUnion([userEmail])
    }, SetOptions(merge: true));
  }
}
