import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/bloc/firebase_cubit.dart';
import 'package:personal_trainer/app/bloc/login_cubit.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

import '../app_router.dart';

class FirebaseLoadingScreen extends StatelessWidget {
  const FirebaseLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<FirebaseCubit, FirebaseState>(
              builder: (listenerContext, state) {
            switch (state.runtimeType) {
              case FirebaseLoading:
                handleLoadingState(listenerContext);
                break;
              case FirebaseNotInitialized:
                handleErrorState(listenerContext);
                break;
              case FirebaseInitialized:
                handleInitializedState(listenerContext);
                break;
              default:
                break;
            }
            return Container(
              color: Colors.blue,
              child: Row(children: [
                Center(child: Image.asset('assets/images/fafcio.png')),
                Center(child: CircularProgressIndicator()),
              ]),
            );
          }),
          BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                if (state.appUser is Trainer) {
                  Navigator.pushReplacementNamed(
                      context, AppRouter.CHOOSE_ACCOUNT);
                } else if (state.appUser is Client) {
                  Navigator.pushReplacementNamed(context, AppRouter.CLIENT);
                }
              } else {
                Navigator.pushReplacementNamed(context, AppRouter.LOGIN);
              }
            },
            child: Container(),
          )
        ],
      ),
    );
  }

  void handleLoadingState(BuildContext context) {
    BlocProvider.of<FirebaseCubit>(context).firebaseInit();
  }

  void handleErrorState(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRouter.LOGIN);
  }

  void handleInitializedState(BuildContext context) {
    var loginCubit = BlocProvider.of<LoginCubit>(context);
    loginCubit.isUserLoggedIn().then((isUserLoggedIn) {
      if (isUserLoggedIn) {
        _handleUserAlreadyLoggedIn(loginCubit);
      } else {
        Navigator.pushReplacementNamed(context, AppRouter.LOGIN);
      }
    });
  }

  void _handleUserAlreadyLoggedIn(LoginCubit loginCubit) {
    loginCubit.getUserData(loginCubit.getUserEmail());
  }
}
