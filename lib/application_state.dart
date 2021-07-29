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

  Future<void> addClientData(String trainerId, String clientEmail) {
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

  Future<void> addTrainerData(String trainerEmail) {
    return FirebaseFirestore.instance
        .collection('trainers')
        .doc(trainerEmail)
        .set({
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'id': FirebaseAuth.instance.currentUser!.uid,
      'email': trainerEmail
    });
  }

  /*// Add from here
  StreamSubscription<QuerySnapshot>? _guestBookSubscription;
  List<GuestBookMessage> _guestBookMessages = [];
  List<GuestBookMessage> get guestBookMessages => _guestBookMessages;
  // to here.*/

  Future<ApplicationLoginState> loginUser(String email, String password) async {
    try {
      var userCredentials =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
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
      addDataToFirestore(userType, trainerEmail, email);
    } on FirebaseAuthException catch (error) {
      showErrorMessage(error);
    }
  }

  Future<void> createUserInFirebaseAuthenticator(
      String email, String password, String displayName) async {
    var credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    await credential.user!.updateDisplayName(displayName);
  }

  void addDataToFirestore(
      UserType userType, String trainerEmail, String userEmail) {
    switch (userType) {
      case UserType.TRAINER:
        addTrainerData(userEmail);
        break;
      case UserType.CLIENT:
        addClientData(trainerEmail, userEmail);
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
