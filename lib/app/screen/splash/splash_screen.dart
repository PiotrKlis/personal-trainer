import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/login/bloc/login_bloc.dart';
import 'package:personal_trainer/app/screen/login/event/login_event.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginBloc(LoginState.initial()),
        child: FirebaseHandler());
  }
}

class FirebaseHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      state.when(initial: () {
        context.read<LoginBloc>().add(LoginEvent.initFirebase());
      }, success: (userType) {
        context
            .read<LoginBloc>()
            .add(LoginEvent.navigateLoggedIn(userType: userType));
      }, error: (error) {
        context
            .read<LoginBloc>()
            .add(LoginEvent.navigateLoggedOut());
      });
      return Center(child: CircularProgressIndicator());
    });
  }

  void navigateToUserScreen(UserType userType, BuildContext context) {
    switch (userType) {
      case UserType.TRAINER:
        //navigate to account choose
        break;
      case UserType.CLIENT:
        //navigate to client screen
        break;
    }
  }
}
