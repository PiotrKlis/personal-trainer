import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personal_trainer/screen/register_screen.dart';

class LoginState extends ChangeNotifier {
  ApplicationLoginState get loginState => _loginState;
  ApplicationLoginState _loginState = ApplicationLoginState.LOGGED_OUT;

  LoginState() {
    init();
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

  void addNewUserData(
      UserType userType, String trainerEmail, String userEmail, String name) {
    var collectionName = 'users';
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

  Future<void> init() async {
    await Firebase.initializeApp();
    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loginState = ApplicationLoginState.LOGGED_IN;
      } else {
        _loginState = ApplicationLoginState.LOGGED_OUT;
      }
      notifyListeners();
    });
  }

  Future<void> addNewClientToDb(String trainerId, String clientEmail) {
    return FirebaseFirestore.instance
        .collection('clients')
        .doc(clientEmail)
        .set({
      'trainerEmail': trainerId,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'id': FirebaseAuth.instance.currentUser!.uid,
      'clientEmail': clientEmail
    });
  }

  Future<ApplicationLoginState> loginUser(String email, String password) async {
    try {
      var userCredentials =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      getUserData();
      _loginState = ApplicationLoginState.LOGGED_IN;
      return _loginState;
    } on FirebaseAuthException catch (error) {
      showErrorMessage(error);
      return _loginState;
    }
  }

  Future<void> createUser(String email, String password) async {
    var credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  void createClientDataInDb(String collectionName, String userEmail,
      String name, String trainerEmail) {
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
    _loginState = ApplicationLoginState.LOGGED_OUT;
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

  void getUserData() {
    Stream collectionStream =
        FirebaseFirestore.instance.collection('users').snapshots();
    Stream documentStream = FirebaseFirestore.instance
        .collection('users')
        .doc('ABC123')
        .snapshots();
  }
}

enum ApplicationLoginState { LOGGED_IN, LOGGED_OUT }
