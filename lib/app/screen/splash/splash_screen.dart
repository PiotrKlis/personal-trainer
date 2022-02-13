import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/login/bloc/login_bloc.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => LoginBloc(LoginState.initial()),
        child: FirebaseHandler());
  }
}

class FirebaseHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      state.when(initial: () {
        context.read<LoginBloc>().
      }, success: success, error: error)
      // if (state is LoginLoading) {
      //   context.read<LoginBloc>().firebaseInit();
      // } else if (state is LoginSuccess) {
      //   navigateToUserScreen(state, context);
      // } else if (state is LoginFailed) {
      //   print(state.error);
      //   SchedulerBinding.instance?.addPostFrameCallback((_) {
      //     context.replaceRoute(LoginRoute());
      //   });
      // }
      return Center(child: CircularProgressIndicator());
    });
  }

  void navigateToUserScreen(LoginState state, BuildContext context) {
    // if (state.appUser is Trainer) {
    //   var id = (state.appUser as Trainer).id;
    //   SchedulerBinding.instance?.addPostFrameCallback((_) {
    //     context.replaceRoute(AccountChooseRoute(trainerId: id));
    //   });
    // } else if (state.appUser is Client) {
    //   var id = (state.appUser as Client).id;
    //   SchedulerBinding.instance?.addPostFrameCallback((_) {
    //     context.replaceRoute(ClientRoute(id: id));
    //   });
    // }
  }
}
