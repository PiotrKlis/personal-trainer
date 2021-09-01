import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/app_router.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/app/state/register_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/domain/bloc/firebase_bloc.dart';
import 'package:personal_trainer/domain/bloc/login_bloc.dart';
import 'package:personal_trainer/domain/bloc/register_bloc.dart';
import 'package:personal_trainer/domain/model/client.dart';
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

  const PersonalTrainerApp({Key? key,
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
          onGenerateRoute: AppRouter().onGenerateRoute,
          home: BlocBuilder<FirebaseCubit, FirebaseState>(
            builder: (firebaseContext, state) {
              switch (state.runtimeType) {
                case FirebaseLoading:
                  handleLoadingState(firebaseContext);
                  break;
                case FirebaseNotInitialized:
                  handleErrorState();
                  break;
                case FirebaseInitialized:
                  handleInitilized(firebaseContext);
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
    return Align(
      alignment: Alignment.center,
      child: new CircularProgressIndicator(),
    );
  }

  Widget handleErrorState() {
    return Container(
        child: Text("Error! Check internet connection and try again!"));
  }
}

Widget handleInitilized(BuildContext context) {
  var loginCubit = BlocProvider.of<LoginCubit>(context);
  loginCubit.isUserLoggedIn().then((isUserLoggedIn) {
    if (isUserLoggedIn) {
      handleUserAlreadyLoggedIn(loginCubit, context);
    } else {
      Navigator.pushNamed(context, '/login');
    }
  });
  return Container();
}

// class HandleInitilized extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
//       var loginCubit = BlocProvider.of<LoginCubit>(context);
//       loginCubit.isUserLoggedIn().then((value) {
//         bool isUserLoggedIn = value;
//         if (isUserLoggedIn) {
//           handleUserAlreadyLoggedIn(loginCubit, context);
//         } else {
//           Navigator.pushNamed(context, '/login');
//         }
//       });
//       return Container();
//     // });
//     return Container();
//   }

void handleUserAlreadyLoggedIn(LoginCubit loginCubit, BuildContext context) {
  loginCubit.getUserData(loginCubit.getUserEmail()).then((loginState) {
    if (loginState is LoginSuccess) {
      if (loginState.appUser is Trainer) {
        Navigator.pushNamed(context, '/trainer');
      } else if (loginState.appUser is Client) {
        Navigator.pushNamed(context, '/client');
      }
    } else {
      Navigator.pushNamed(context, '/login');
    }
  });
}
// }

