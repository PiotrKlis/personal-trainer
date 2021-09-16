import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/app/bloc/login_cubit.dart';
import 'package:personal_trainer/app/screen/register_screen.dart';
import 'package:personal_trainer/app/screen/trainer_screen.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/app/widget/error_toast.dart';
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
              onChanged: (value) => _login = value,
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
              onChanged: (value) => _password = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  var loginCubit = BlocProvider.of<LoginCubit>(context);
                  loginCubit.loginUser(_login ?? "", _password ?? "");
                }
              },
              child: Text('Login'),
            ),
          ),
          BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                if (state.appUser is Trainer) {
                  Navigator.pushReplacementNamed(context, '/trainer');
                } else if (state.appUser is Client) {
                  Navigator.pushReplacementNamed(context, '/client');
                }
              } else if (state is LoginFailed) {
                ErrorView.showErrorToast(
                    'Login Failed - check internet connection or create new account');
              }
            },
            child: Container(),
          ),
        ],
      ),
    );
  }
}
