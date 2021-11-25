import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/app/screen/register/register_cubit.dart';
import 'package:personal_trainer/app/screen/register/register_state.dart';
import 'package:personal_trainer/app/widget/toast_message.dart';
import 'package:personal_trainer/domain/model/register_data.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(RegisterInit()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: RegisterForm(),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  UserType? _userType = UserType.CLIENT;
  String _email = "";
  String _password = "";
  String _displayName = "";
  String _trainerEmail = "";
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:
          BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
        if (state is Registered) {
          Navigator.pop(context);
        } else if (state is RegisterFailed) {
          ToastMessage.show(state.error);
        }
        return Column(
          children: [
            Visibility(
                visible: state is RegisterLoading,
                child: Center(child: CircularProgressIndicator())),
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
                controller: _passwordController,
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
              title: Text('${(UserType.CLIENT.name)}'),
              leading: Radio<UserType>(
                value: UserType.CLIENT,
                groupValue: _userType,
                onChanged: (UserType? value) {
                  _userType = value!;
                  BlocProvider.of<RegisterCubit>(context).changeUserType();
                },
              ),
            ),
            ListTile(
              title: Text('${(UserType.TRAINER.name)}'),
              leading: Radio<UserType>(
                value: UserType.TRAINER,
                groupValue: _userType,
                onChanged: (UserType? value) {
                  _userType = value!;
                  BlocProvider.of<RegisterCubit>(context).changeUserType();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (state != RegisterLoading() &&
                      _formKey.currentState!.validate()) {
                    validateInputs(context);
                  }
                },
                child: Text('Register'),
              ),
            )
          ],
        );
      }),
    );
  }

  void validateInputs(BuildContext context) {
    var registerCubit = BlocProvider.of<RegisterCubit>(context);
    registerCubit.register(RegisterData(
        _displayName, _password, _userType!, _email, _trainerEmail));
  }
}
