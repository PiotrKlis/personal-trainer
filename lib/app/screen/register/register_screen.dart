import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/app/model/register_data.dart';
import 'package:personal_trainer/app/model/user_type.dart';
import 'package:personal_trainer/app/screen/register/bloc/register_bloc.dart';
import 'package:personal_trainer/app/screen/register/event/register_event.dart';
import 'package:personal_trainer/app/screen/register/state/register_state.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/data/util/const.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(RegisterState.initial()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.register),
        ),
        body: RegisterScreenView(),
      ),
    );
  }
}

class RegisterScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
        builder: (context, state) => RegisterForm(state: state),
        listener: (context, state) {
          state.whenOrNull(
              success: () {
                Navigator.pop(context);
              },
              error: (error) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      duration: Duration(
                          milliseconds:
                              DurationConst.snackbarVisibilityLongerDuration),
                      content: Text(error))));
        });
  }
}

class RegisterForm extends StatefulWidget {
  final RegisterState state;

  const RegisterForm({Key? key, required this.state}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  UserType? _userType = UserType.CLIENT;
  String _email = "";
  String _password = "";
  String _confirmPassword = "";
  String _displayName = "";
  String _trainerEmail = "";
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: TextFormField(
              validator: RequiredValidator(
                  errorText: AppLocalizations.of(context)!.name_required_error),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.name),
              onChanged: (value) => _displayName = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: TextFormField(
              validator: MultiValidator([
                EmailValidator(
                    errorText:
                        AppLocalizations.of(context)!.invalid_email_error),
                RequiredValidator(
                    errorText:
                        AppLocalizations.of(context)!.email_required_error)
              ]),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.email),
              onChanged: (value) => _email = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: TextFormField(
              obscureText: true,
              controller: _passwordController,
              validator: MinLengthValidator(ValidatorConst.minPasswordLength,
                  errorText:
                      AppLocalizations.of(context)!.password_length_error),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.password),
              onChanged: (value) => _password = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: TextFormField(
              obscureText: true,
              controller: _confirmPasswordController,
              validator: (value) {
                if (value != _passwordController.text) {
                  return AppLocalizations.of(context)!.password_unmatched;
                } else if (value!.length < ValidatorConst.minPasswordLength) {
                  return AppLocalizations.of(context)!.password_length_error;
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.confirm_password),
              onChanged: (value) => _confirmPassword = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: Visibility(
              visible: _userType == UserType.CLIENT,
              child: TextFormField(
                validator: MultiValidator([
                  EmailValidator(
                      errorText:
                          AppLocalizations.of(context)!.invalid_email_error),
                  RequiredValidator(
                      errorText: AppLocalizations.of(context)!
                          .trainer_email_required_error)
                ]),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.trainer_email,
                ),
                onChanged: (value) => _trainerEmail = value,
              ),
            ),
          ),
          RadioListTile<UserType>(
            title: Text(UserType.CLIENT.name),
            value: UserType.CLIENT,
            groupValue: _userType,
            onChanged: (UserType? value) {
              setState(() {
                _userType = value!;
              });
            },
          ),
          RadioListTile<UserType>(
            title: Text(UserType.TRAINER.name),
            value: UserType.TRAINER,
            groupValue: _userType,
            onChanged: (UserType? value) {
              setState(() {
                _userType = value!;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  registerUser(context);
                }
              },
              child: Text(AppLocalizations.of(context)!.register),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: Visibility(
                visible: widget.state is Loading,
                child: CircularProgressIndicator()),
          )
        ],
      ),
    );
  }

  void registerUser(BuildContext context) {
    if (_trainerEmail.isEmpty) {
      _trainerEmail = _email;
    }
    context.read<RegisterBloc>().add(RegisterEvent.register(
        registerData: RegisterData(
            name: _displayName,
            password: _password,
            userType: _userType!,
            email: _email,
            trainerEmail: _trainerEmail)));
  }
}
