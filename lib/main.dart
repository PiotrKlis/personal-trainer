import 'package:flutter/material.dart';
import 'package:personal_trainer/screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => ApplicationState(),
    builder: (context, _) => PersonalTrainerApp(),
  ));
}

class PersonalTrainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'Personal Trainer',
        theme: ThemeData.light(),
        home: LoginScreen(),
      ),
    );
  }
}

class ApplicationState extends ChangeNotifier {
  ApplicationLoginState get loginState => _loginState;
  ApplicationLoginState _loginState = ApplicationLoginState.LOGGED_OUT;
  String? _email;

  String? get email => _email;

  ApplicationState() {
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

  void startLoginFlow() {
    // _loginState = ApplicationLoginState.emailAddress;
    notifyListeners();
  }

  void verifyEmail(
    String email,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      var methods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      if (methods.contains('password')) {
        // _loginState = ApplicationLoginState.password;
      } else {
        // _loginState = ApplicationLoginState.register;
      }
      _email = email;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  void signInWithEmailAndPassword(
    String email,
    String password,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  void cancelRegistration() {
    // _loginState = ApplicationLoginState.emailAddress;
    notifyListeners();
  }

  void registerAccount(String email, String displayName, String password,
      void Function(FirebaseAuthException e) errorCallback) async {
    try {
      var credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await credential.user!.updateDisplayName(displayName);
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
  }
}

enum ApplicationLoginState { LOGGED_IN, LOGGED_OUT }
