import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) =>
              LoginCubit(LoginLoading())),
    ], child: FirebaseHandler());
  }
}

class FirebaseHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      if (state is LoginLoading) {
        context.read<LoginCubit>().firebaseInit();
      } else if (state is LoginSuccess) {
        navigateToUserScreen(state, context);
      } else if (state is LoginFailed) {
        print(state.error);
        SchedulerBinding.instance?.addPostFrameCallback((_) {
          Navigator.pushReplacementNamed(context, AppRouter.LOGIN);
        });
      }
      return Center(child: CircularProgressIndicator());
    });
  }

  void navigateToUserScreen(LoginSuccess state, BuildContext context) {
    if (state.appUser is Trainer) {
      var id = (state.appUser as Trainer).id;
      SchedulerBinding.instance?.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, AppRouter.CHOOSE_ACCOUNT,
            arguments: AccountChooseArguments(id));
      });
    } else if (state.appUser is Client) {
      var id = (state.appUser as Client).id;
      SchedulerBinding.instance?.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, AppRouter.CLIENT,
            arguments: ClientScreenArguments(id));
      });
    }
  }
}
