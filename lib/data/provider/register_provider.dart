import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_trainer/app/model/register_data.dart';
import 'package:personal_trainer/app/model/user_type.dart';
import 'package:personal_trainer/data/util/const.dart';

@injectable
class RegisterProvider {
  Future registerTrainerAndClient({required RegisterData registerData}) async {
    try {
      await _createUser(
          email: registerData.email, password: registerData.password);
      await _createTrainerDataInDB(
          userEmail: registerData.email,
          name: registerData.name,
          password: registerData.password);
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
    } catch (error) {
      if (error is FirebaseAuthException) {
        if (error.code == 'email-already-in-use') {
          return Future.error(MessageException("Email already in use"));
        }
      }
      _deleteUserData();
      FirebaseAuth.instance.currentUser?.delete();
      return Future.error(error);
    }
  }

  Future registerClient({required RegisterData registerData}) async {
    try {
      await _createUser(
          email: registerData.email, password: registerData.password);
      await _addClientDataToDB(registerData: registerData);
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
    } catch (error) {
      _deleteUserData();
      FirebaseAuth.instance.currentUser?.delete();
      return Future.error(error);
    }
  }

  _deleteUserData() async {
    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .delete();
  }

  _createUser({required String email, required String password}) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  _addClientDataToDB({required RegisterData registerData}) async {
    await _createClientDataInDb(registerData: registerData);
    await _updateTrainerDataWithNewClientData(
        trainerEmail: registerData.trainerEmail, email: registerData.email);
  }

  _createTrainerDataInDB(
      {required String userEmail,
      required String name,
      required String password}) async {
    var id = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(id)
        .set({
      'id': id,
      'name': name,
      'email': userEmail,
      'userType': UserType.TRAINER.name,
      "clients": FieldValue.arrayUnion([FirebaseAuth.instance.currentUser!.uid])
    });
  }

  _createClientDataInDb({required RegisterData registerData}) async {
    var trainerId =
        await _getTrainerId(trainerEmail: registerData.trainerEmail);
    String userId = FirebaseAuth.instance.currentUser!.uid;

    FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(userId)
        .set({
      'id': userId,
      'name': registerData.name,
      'email': registerData.email,
      'trainerEmail': registerData.trainerEmail,
      'trainerId': trainerId,
      'userType': UserType.CLIENT.name
    });
  }

  _updateTrainerDataWithNewClientData(
      {required String trainerEmail, required String email}) async {
    var trainerId = await _getTrainerId(trainerEmail: trainerEmail);

    FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(trainerId)
        .set({
      "clients": FieldValue.arrayUnion([FirebaseAuth.instance.currentUser!.uid])
    }, SetOptions(merge: true));
  }

  Future<String> _getTrainerId({required String trainerEmail}) async {
    try {
      var trainerData = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .where('email', isEqualTo: trainerEmail)
          .get();
      return trainerData.docs.single.get('id');
    } catch (error) {
      return Future.error(MessageException("Invalid trainer email"));
    }
  }
}

class MessageException implements Exception {
  String message;

  MessageException(this.message);
}
