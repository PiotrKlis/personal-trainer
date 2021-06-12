import 'package:flutter/material.dart';
import 'package:personal_trainer/register_screen.dart';
import 'package:personal_trainer/trainer_screen.dart';

import 'client_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            child: MyCustomForm(),
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
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String? _login;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                return validateLogin(value);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Login'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                return validatePassword(value);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  validateCredentials();
                }
              },
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }

  String? validatePassword(String? value) {
    _password = value;
    if (value == 'password') {
      return null;
    } else {
      return 'Invalid password';
    }
  }

  String? validateLogin(String? value) {
    _login = value;
    if (value == 'client' || value == 'trainer') {
      return null;
    } else {
      return 'Invalid login';
    }
  }

  void validateCredentials() {
    switch (_login) {
      case 'trainer':
        {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => TrainerScreen()),
          );
        }
        break;
      case 'client':
        {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ClientScreen()),
          );
        }
        break;
    }
  }
}
