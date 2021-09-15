import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/app/screen/register_screen.dart';
import 'package:personal_trainer/app/screen/trainer_screen.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/domain/bloc/login_bloc.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

import 'client_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocListener<LoginCubit, LoginState>(listener: (context, state) {
            if (state is LoginSuccess) {
              if (state.appUser is Trainer) {
                Navigator.pushReplacementNamed(context, '/trainer');
              } else if (state.appUser is Client) {
                Navigator.pushReplacementNamed(context, '/client');
              }
            }
          }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrainerScreen()),
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
            child: LoginForm(),
          ),
          BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
            return Column(
              children: [
                if (state is LoginFailed)
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Login Failed. Check internet connection or register account'))
              ],
            );
          }),
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
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
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
              validator: MultiValidator([
                EmailValidator(errorText: "Enter valid email"),
                RequiredValidator(errorText: 'Email is required')
              ]),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              validator: MinLengthValidator(6,
                  errorText: "Password should be at least 6 characters"),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _formKey.currentState!.validate();
                // if (_formKey.currentState!.validate()) {
                // validateCredentials(context);
                // }
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

// void validateCredentials(BuildContext context) async {
//
// }
}
