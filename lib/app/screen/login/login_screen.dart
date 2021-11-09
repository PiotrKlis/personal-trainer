import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_trainer/app/screen/account_choose/account_choose_screen.dart';
import 'package:personal_trainer/app/screen/client/client_screen.dart';
import 'package:personal_trainer/app/screen/login/login_cubit.dart';
import 'package:personal_trainer/app/screen/login/login_state.dart';
import 'package:personal_trainer/app/widget/error_message.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

import '../../app_router.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginCubit(LoginLoading(), LoginProvider(), FirebaseProvider()),
      child: LoginWidget(),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                Navigator.pushNamed(context, AppRouter.REGISTER);
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
                  var id = (state.appUser as Trainer).email;
                  Navigator.pushReplacementNamed(
                      context, AppRouter.CHOOSE_ACCOUNT,
                      arguments: AccountChooseArguments(id));
                } else if (state.appUser is Client) {
                  var id = (state.appUser as Client).email;
                  Navigator.pushReplacementNamed(context, AppRouter.CLIENT,
                      arguments: ClientScreenArguments(id));
                }
              } else if (state is LoginFailed) {
                ErrorMessage.showErrorToast(
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
