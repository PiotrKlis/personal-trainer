import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/app_router.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/domain/bloc/firebase_bloc.dart';
import 'package:personal_trainer/domain/bloc/login_bloc.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

void main() {
  runApp(PersonalTrainerApp(
    firebaseProvider: FirebaseProvider(),
    loginProvider: LoginProvider(),
  ));
}

class PersonalTrainerApp extends StatelessWidget {
  final FirebaseProvider firebaseProvider;
  final LoginProvider loginProvider;

  const PersonalTrainerApp({
    Key? key,
    required this.firebaseProvider,
    required this.loginProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (loginContext) => LoginCubit(LoginLoading(), loginProvider)),
        BlocProvider(
            create: (firebaseContext) =>
                FirebaseCubit(FirebaseLoading(), firebaseProvider)),
      ],
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          title: 'Personal Trainer',
          theme: ThemeData.light(),
          onGenerateRoute: AppRouter().onGenerateRoute,
          //TODO: Probably firebase loading should be separate widget
          // home: Scaffold(
          //   body: Center(
          //     child: Row(
          //       children: [
          //         BlocListener(listener: (childContext, state) {
          //           switch (state.runtimeType) {
          //             case FirebaseLoading:
          //               handleLoadingState(childContext);
          //               break;
          //             case FirebaseNotInitialized:
          //               handleErrorState(childContext);
          //               break;
          //             case FirebaseInitialized:
          //               handleInitializedState(childContext);
          //               break;
          //             default:
          //               break;
          //           }
          //         }),
          //         CircularProgressIndicator()
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }

  void handleLoadingState(BuildContext context) {
    BlocProvider.of<FirebaseCubit>(context).firebaseInit();
  }

  void handleErrorState(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
  }

  void handleInitializedState(BuildContext context) {
    var loginCubit = BlocProvider.of<LoginCubit>(context);
    loginCubit.isUserLoggedIn().then((isUserLoggedIn) {
      if (isUserLoggedIn) {
        _handleUserAlreadyLoggedIn(loginCubit, context);
      } else {
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }

  void _handleUserAlreadyLoggedIn(LoginCubit loginCubit, BuildContext context) {
    BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          if (state.appUser is Trainer) {
            Navigator.pushReplacementNamed(context, '/trainer');
          } else if (state.appUser is Client) {
            Navigator.pushReplacementNamed(context, '/client');
          }
        } else {
          Navigator.pushReplacementNamed(context, '/login');
        }
      },
    );
    loginCubit.getUserData(loginCubit.getUserEmail());
  }
}
