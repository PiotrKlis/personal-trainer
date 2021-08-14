import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/app/state/register_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/domain/bloc/firebase_bloc.dart';
import 'package:personal_trainer/domain/bloc/login_bloc.dart';
import 'package:personal_trainer/domain/bloc/register_bloc.dart';

import 'screen/login_screen.dart';

void main() {
  runApp(PersonalTrainerApp(
    firebaseProvider: FirebaseProvider(),
    loginProvider: LoginProvider(),
    registerProvider: RegisterProvider(),
  ));
}

class PersonalTrainerApp extends StatelessWidget {
  final FirebaseProvider firebaseProvider;
  final LoginProvider loginProvider;
  final RegisterProvider registerProvider;

  const PersonalTrainerApp(
      {Key? key,
      required this.firebaseProvider,
      required this.loginProvider,
      required this.registerProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FirebaseBloc(FirebaseLoading(), firebaseProvider)),
        BlocProvider(
            create: (context) => LoginBloc(LoginLoading(), loginProvider)),
        BlocProvider(
            create: (context) =>
                RegisterBloc(RegisterLoading(), registerProvider)),
      ],
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          title: 'Personal Trainer',
          theme: ThemeData.light(),
          home: LoginScreen(),
        ),
      ),
    );
  }
}
