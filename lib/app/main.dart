import 'dart:html';

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
import 'package:personal_trainer/domain/model/trainer.dart';

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
                FirebaseCubit(FirebaseLoading(), firebaseProvider)),
        BlocProvider(
            create: (context) => LoginCubit(LoginLoading(), loginProvider)),
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
          home: BlocBuilder<FirebaseCubit, FirebaseState>(
            builder: (context, state) {
              switch (state.runtimeType) {
                case FirebaseLoading:
                  handleLoadingState(context);
                  break;
                case FirebaseNotInitialized:
                  handleErrorState();
                  break;
                case FirebaseInitialized:
                  handleInitialized(context);
                  break;
                default:
                  break;
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget handleLoadingState(BuildContext context) {
    BlocProvider.of<FirebaseCubit>(context).firebaseInit();
    // sleep(Duration(seconds: 5));
    return Container(child: CircularProgressIndicator());
  }

  Widget handleErrorState() {
    return Container(
        child: Text("Error! Check internet connection and try again!"));
  }

  void handleInitialized(BuildContext context) {
    // BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      var loginCubit = BlocProvider.of<LoginCubit>(context);
      loginCubit.isUserLoggedIn().then((value) {
        bool isUserLoggedIn = value;
        if (isUserLoggedIn) {
          loginCubit.getUserData(loginCubit.getUserEmail()).then((loginState) {
            if (loginState is LoginSuccess) {
              if (loginState.appUser is Trainer) {
                Navigator.pushNamed(context, '/trainer');
              } else if (loginState.appUser is Client) {
                Navigator.pushNamed(context, '/client');
              }
            }
            else {
              Navigator.pushNamed(context, '/login');
            }
          });
        } else {
          Navigator.pushNamed(context, '/login');
        }
      });
    }
    // );
  // }
}
