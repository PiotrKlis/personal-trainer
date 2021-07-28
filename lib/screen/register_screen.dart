import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/application_state.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Consumer<LoginState>(
        builder: (context, appState, _) =>
            RegisterForm(registerAccount: appState.registerUser),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({required this.registerAccount});

  final void Function(String email, String displayName, String password,
      String trainerEmail, UserType userType) registerAccount;

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  UserType? _userType = UserType.CLIENT;
  String _email = "";
  String _password = "";
  String _displayName = "";
  String _trainerEmail = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: RequiredValidator(errorText: 'Name is required'),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
              onChanged: (value) => _displayName = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: MultiValidator([
                EmailValidator(errorText: "Enter valid email"),
                RequiredValidator(errorText: 'Email is required')
              ]),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
              onChanged: (value) => _email = value,
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
            child: Visibility(
              visible: _userType == UserType.CLIENT,
              child: TextFormField(
                validator: MultiValidator([
                  EmailValidator(errorText: "Enter valid email"),
                  RequiredValidator(errorText: 'Trainer email is required')
                ]),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Trainer email',
                ),
                onChanged: (value) => _trainerEmail = value,
              ),
            ),
          ),
          ListTile(
            title: Text('${describeEnum(UserType.CLIENT)}'),
            leading: Radio<UserType>(
              value: UserType.CLIENT,
              groupValue: _userType,
              onChanged: (UserType? value) {
                setState(() {
                  _userType = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('${describeEnum(UserType.TRAINER)}'),
            leading: Radio<UserType>(
              value: UserType.TRAINER,
              groupValue: _userType,
              onChanged: (UserType? value) {
                setState(() {
                  _userType = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  validateInputs(context);
                }
              },
              child: Text('Register'),
            ),
          )
        ],
      ),
    );
  }

  void validateInputs(BuildContext context) {
    widget.registerAccount(_email, _displayName, _password, _trainerEmail, _userType!);
    Navigator.pop(context);
  }
}

enum UserType { TRAINER, CLIENT }

extension UserTypeExtension on UserType {
  String get name {
    switch (this) {
      case UserType.TRAINER:
        return 'trainer';
      case UserType.CLIENT:
        return 'client';
    }
  }
}
