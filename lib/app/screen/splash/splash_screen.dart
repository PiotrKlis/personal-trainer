import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/login/bloc/login_bloc.dart';
import 'package:personal_trainer/app/screen/login/event/login_event.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';

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
      LoginBloc loginBloc = context.read<LoginBloc>();
      state.when(initial: () {
        loginBloc.add(LoginEvent.initFirebase());
      }, success: (userType) {
        loginBloc.add(LoginEvent.navigateLoggedIn(userType: userType));
      }, error: (error) {
        loginBloc.add(LoginEvent.navigateLoggedOut());
      });
      return Center(child: CircularProgressIndicator());
    });
  }
}
