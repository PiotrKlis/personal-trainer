import 'package:flutter/material.dart';
import 'package:personal_trainer/screen/register_screen.dart';
import 'package:personal_trainer/screen/trainer_screen.dart';
import 'package:provider/provider.dart';

import '../application_state.dart';
import 'client_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Consumer<LoginState>(
          builder: (context, appState, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrainerScreen()),
                      );
                    },
                    child: Text('Trainer shortcut'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ClientScreen()),
                      );
                    },
                    child: Text('Client shortcut'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LoginForm(loginUser: appState.loginUser),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'No account yet? Register by clicking button below!'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text('Register'),
                  ),
                )
              ],
            );
          },
        ));
  }
}

class LoginForm extends StatefulWidget {
  LoginForm({required this.loginUser});

  final Future<ApplicationLoginState> Function(String email, String password)
      loginUser;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
                  border: OutlineInputBorder(), hintText: 'Email'),
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
                  validateCredentials(context);
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
  }

  String? validateLogin(String? value) {
    _login = value;
  }

  void validateCredentials(BuildContext context) {
    widget.loginUser(_login ?? "", _password ?? "").then((loginState) {
      switch (loginState) {
        case ApplicationLoginState.LOGGED_IN:

          break;
        case ApplicationLoginState.LOGGED_OUT:
          break;
      }
    });
  }
}
