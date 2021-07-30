import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personal_trainer/model/app_user.dart';
import 'package:personal_trainer/model/client.dart';
import 'package:personal_trainer/model/trainer.dart';
import 'package:personal_trainer/screen/register_screen.dart';

class LoginState extends ChangeNotifier {
  var collectionName = 'users';

  LoginState() {
    init();
  }

  Future<void> init() async {
    await Firebase.initializeApp();
  }

  bool isUserLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future<void> registerUser(String userEmail, String name, String password,
      String trainerEmail, UserType userType) async {
    try {
      await createUser(userEmail, password);
      addNewUserData(userType, trainerEmail, userEmail, name);
    } on FirebaseAuthException catch (error) {
      showErrorMessage(error);
    }
  }

  Future<void> createUser(String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  void addNewUserData(
      UserType userType, String trainerEmail, String userEmail, String name) {
    switch (userType) {
      case UserType.TRAINER:
        createTrainerDataInDb(collectionName, userEmail, name);
        break;
      case UserType.CLIENT:
        createClientDataInDb(collectionName, userEmail, name, trainerEmail);
        updateTrainerDataWithNewClientData(
            collectionName, trainerEmail, userEmail);
        break;
    }
  }

  void updateTrainerDataWithNewClientData(
      String collectionName, String trainerEmail, String userEmail) {
    var fieldName = 'clients';
    FirebaseFirestore.instance
        .collection(collectionName)
        .doc(trainerEmail)
        .set({
      fieldName: FieldValue.arrayUnion([userEmail])
    }, SetOptions(merge: true));
  }

  Future<void> addNewClientToDb(String trainerId, String clientEmail) {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .doc(clientEmail)
        .set({
      'trainerEmail': trainerId,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'id': FirebaseAuth.instance.currentUser!.uid,
      'clientEmail': clientEmail
    });
  }

  Future<AppUser?> loginUser(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return getUserData(email);
    } on FirebaseAuthException catch (error) {
      showErrorMessage(error);
      return null;
    }
  }

  Future<AppUser?> getUserData(String email) async {
    AppUser? appUser;
    var value = await FirebaseFirestore.instance
        .collection(collectionName)
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
    }
    return appUser;
  }
}

void createClientDataInDb(
    String collectionName, String userEmail, String name, String trainerEmail) {
  FirebaseFirestore.instance.collection(collectionName).doc(userEmail).set({
    'id': FirebaseAuth.instance.currentUser!.uid,
    'name': name,
    'email': userEmail,
    'trainerEmail': trainerEmail,
    'userType': 'client'
  });
}

void createTrainerDataInDb(
    String collectionName, String userEmail, String name) {
  FirebaseFirestore.instance.collection(collectionName).doc(userEmail).set({
    'id': FirebaseAuth.instance.currentUser!.uid,
    'name': name,
    'email': userEmail,
    'userType': 'trainer'
  });
}

void signOut() {
  FirebaseAuth.instance.signOut();
}

void showErrorMessage(FirebaseAuthException error) {
  Fluttertoast.showToast(
      msg: error.message.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

enum ApplicationLoginState { LOGGED_IN, LOGGED_OUT }
