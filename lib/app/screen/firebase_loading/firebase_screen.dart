import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/firebase_loading/firebase_cubit.dart';
import 'package:personal_trainer/app/screen/firebase_loading/firebase_state.dart';
import 'package:personal_trainer/app/screen/login/login_cubit.dart';
import 'package:personal_trainer/app/screen/login/login_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/domain/model/client.dart';
import 'package:personal_trainer/domain/model/trainer.dart';

import '../../app_router.dart';
import '../account_choose/account_choose_screen.dart';
import '../client/client_screen.dart';

class FirebaseLoadingScreen extends StatelessWidget {
  final FirebaseProvider firebaseProvider = FirebaseProvider();
  final LoginProvider loginProvider = LoginProvider();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FirebaseCubit(FirebaseLoading(), firebaseProvider)),
        BlocProvider(
            create: (context) => LoginCubit(LoginLoading(), loginProvider)),
      ],
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<FirebaseCubit, FirebaseState>(
                builder: (context, state) {
              switch (state.runtimeType) {
                case FirebaseLoading:
                  context.read<FirebaseCubit>().firebaseInit();
                  break;
                case FirebaseNotInitialized:
                  Navigator.pushReplacementNamed(context, AppRouter.LOGIN);
                  break;
                case FirebaseInitialized:
                  handleInitializedState(context);
                  break;
                default:
                  break;
              }
              return Center(child: CircularProgressIndicator());
            }),
            BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  if (state.appUser is Trainer) {
                    var id = (state.appUser as Trainer).id;
                    Navigator.pushReplacementNamed(
                        context, AppRouter.CHOOSE_ACCOUNT,
                        arguments: AccountChooseArguments(id));
                  } else if (state.appUser is Client) {
                    var id = (state.appUser as Client).id;
                    Navigator.pushReplacementNamed(context, AppRouter.CLIENT,
                        arguments: ClientScreen(id: id));
                  }
                } else if (state is LoginFailed) {
                  print(state.error);
                  Navigator.pushReplacementNamed(context, AppRouter.LOGIN);
                }
              },
              child: Container(),
            )
          ],
        ),
      ),
    );
  }

  void handleInitializedState(BuildContext context) {
    context.read<LoginCubit>().handleInitializedFirebase();

    // loginCubit.getUser().then((user) {
    //   loginCubit.getUserData(loginCubit.getUserId());
    // })
    //     .catchError((_) => Navigator.pushReplacementNamed(context, AppRouter.LOGIN));
  }
}
