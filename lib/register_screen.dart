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
  UserType _userType = UserType.client;

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
                  errorText: "Password should be atleast 6 characters"),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          Row(
            children: [
              SizedBox(width: 24),
              Expanded(
                child: RadioListTile(
                    value: 'Trainer',
                    groupValue: _userType,
                    onChanged: (Object? value) {}),
              ),
              Expanded(child: Text('Trainer')),
              SizedBox(width: 24),
              Expanded(
                child: RadioListTile(
                    value: 'Trainer',
                    groupValue: _userType,
                    onChanged: (Object? value) {}),
              ),
              Expanded(child: Text('Client')),
            ],
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

enum UserType { trainer, client }
