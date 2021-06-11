import 'package:flutter/material.dart';
import 'package:personal_trainer/register_screen.dart';
import 'package:personal_trainer/trainer_screen.dart';

import 'client_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? login;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (value) {
                login = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Login'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (value) {
                password = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                validateInputs();
              },
              child: Text('Login'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('No account yet? Register by clicking button below!'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text('Register'),
            ),
          )
        ],
      ),
    );
  }

  void validateInputs() {
    if (login == "trainer" && password == "trainer") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TrainerScreen()),
      );
    }
    if (login == "client" && password == "client") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ClientScreen()),
      );
    }
  }
}
