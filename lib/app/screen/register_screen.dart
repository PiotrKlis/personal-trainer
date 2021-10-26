import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/app/bloc/register_cubit.dart';
import 'package:personal_trainer/app/state/register_state.dart';
import 'package:personal_trainer/app/util/custom_validator.dart';
import 'package:personal_trainer/app/widget/error_toast.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(RegisterLoading(), RegisterProvider()),
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
  String _additionalPassword = "";
  String _displayName = "";
  String _trainerEmail = "";
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _additionalPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:
          BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
        return Column(
          children: [
            BlocListener<RegisterCubit, RegisterState>(
              listener: (context, state) {
                if (state is Registered) {
                  Navigator.pop(context);
                } else if (state is RegisterFailed) {
                  ErrorView.showErrorToast(state.error);
                }
              },
              child: Container(),
            ),
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
                    border: OutlineInputBorder(),
                    hintText: BlocProvider.of<RegisterCubit>(context)
                        .getPasswordHintText(_userType)),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Visibility(
                  visible: _userType == UserType.TRAINER,
                  child: Text(
                      'As a trainer you will also get your own client account. Please specify different password to it below.')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Visibility(
                visible: _userType == UserType.TRAINER,
                child: TextFormField(
                  controller: _additionalPasswordController,
                  obscureText: true,
                  validator: MultiValidator([
                    MinLengthValidator(6,
                        errorText: "Password should be at least 6 characters"),
                    NotMatchValidator(
                        "Passwords for trainer and user accouent have to be different!",
                        _passwordController.text)
                  ]),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Client account password'),
                  onChanged: (value) => _additionalPassword = value,
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
                  if (_formKey.currentState!.validate()) {
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
    registerCubit.register(_email, _displayName, _password, _trainerEmail,
        _userType, _additionalPassword);
  }
}
