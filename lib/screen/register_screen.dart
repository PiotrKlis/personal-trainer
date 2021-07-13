import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  UserType? _userType = UserType.Client;

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
            child: Visibility(
              visible: _userType == UserType.Client,
              child: TextFormField(
                validator: MultiValidator([
                  EmailValidator(errorText: "Enter valid email"),
                  RequiredValidator(errorText: 'Trainer email is required')
                ]),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Trainer email',
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('${describeEnum(UserType.Client)}'),
            leading: Radio<UserType>(
              value: UserType.Client,
              groupValue: _userType,
              onChanged: (UserType? value) {
                setState(() {
                  _userType = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('${describeEnum(UserType.Trainer)}'),
            leading: Radio<UserType>(
              value: UserType.Trainer,
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
    Navigator.pop(context);
  }
}

enum UserType { Trainer, Client }
