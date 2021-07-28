import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personal_trainer/screen/register_screen.dart';

class LoginState extends ChangeNotifier {
  ApplicationLoginState get loginState => _loginState;
  ApplicationLoginState _loginState = ApplicationLoginState.LOGGED_OUT;
  String? _email;

  String? get email => _email;
  String? _password;

  String? get password => _password;
  String? _name;

  String? get name => _name;
  String? _userType;

  String? get userType => _userType;

  LoginState() {
    init();
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

  Future<DocumentReference> addClientData(String trainerId) {
    return FirebaseFirestore.instance.collection('users').add({
      'trainerId': trainerId,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'id': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  Future<DocumentReference> addTrainerData() {
    return FirebaseFirestore.instance.collection('trainers').add({
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'id': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  Future<ApplicationLoginState> loginUser(String email, String password) async {
    try {
      var val = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _loginState = ApplicationLoginState.LOGGED_IN;
      return _loginState;
    } on FirebaseAuthException catch (error) {
      showErrorMessage(error);
      return _loginState;
    }
  }

  Future<void> registerUser(String email, String displayName, String password,
      String trainerEmail, UserType userType) async {
    try {
      await createUserInFirebaseAuthenticator(email, password, displayName);
      addDataToFirestore(userType, trainerEmail);
    } on FirebaseAuthException catch (error) {
      showErrorMessage(error);
    }
  }

  Future<void> createUserInFirebaseAuthenticator(String email, String password, String displayName) async {
    var credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    await credential.user!.updateDisplayName(displayName);
  }

  void addDataToFirestore(UserType userType, String trainerEmail) {
     switch (userType) {
      case UserType.TRAINER:
          addTrainerData();
        break;
      case UserType.CLIENT:
          addClientData(trainerEmail);
        break;
    }
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
}

enum ApplicationLoginState { LOGGED_IN, LOGGED_OUT }
