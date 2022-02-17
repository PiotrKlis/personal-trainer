import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/app/screen/login/bloc/login_bloc.dart';
import 'package:personal_trainer/app/screen/login/event/login_event.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(LoginState.initial()),
      child: LoginScreenContent(),
    );
  }
}

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.login),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: LoginForm(),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: Text(AppLocalizations.of(context)!.register_encourage),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: ElevatedButton(
              onPressed: () {
                context.read<LoginBloc>().add(LoginEvent.navigateToRegister());
              },
              child: Text(AppLocalizations.of(context)!.register),
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
                EmailValidator(errorText: AppLocalizations.of(context)!.invalid_email_error),
                RequiredValidator(errorText: AppLocalizations.of(context)!.email_required_error)
              ]),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: AppLocalizations.of(context)!.email),
              onChanged: (value) => _login = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              validator: MinLengthValidator(6,
                  errorText: AppLocalizations.of(context)!.password_length_error),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: AppLocalizations.of(context)!.password),
              onChanged: (value) => _password = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(
                      LogIn(login: _login ?? "", password: _password ?? ""));
                }
              },
              child: Text(AppLocalizations.of(context)!.login),
            ),
          ),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.when(initial: () {
                //no-op
              }, success: (userType) {
                context
                    .read<LoginBloc>()
                    .add(NavigateLoggedIn(userType: userType));
              }, error: (error) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: Duration(
                        milliseconds: DurationConst.snackbarVisibilityDuration),
                    content: Text(error)));
              });
            },
            child: Container(),
          ),
        ],
      ),
    );
  }
}
