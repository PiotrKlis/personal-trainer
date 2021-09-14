import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/register_screen.dart';
import 'package:personal_trainer/app/screen/trainer_screen.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/domain/bloc/login_bloc.dart';
import 'package:personal_trainer/domain/model/app_user.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';
import 'package:provider/provider.dart';

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
    var loginCubit = BlocProvider.of<LoginCubit>(context);
    
    // widget.loginUser(_login ?? "", _password ?? "").then((appUser) {
    //   if (appUser is Trainer) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => TrainerScreen()),
    //     );
    //   } else if (appUser is Client) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => ClientScreen()),
    //     );
    //   } else {
    //     //showError?
    //   }
    // });
  }
}
