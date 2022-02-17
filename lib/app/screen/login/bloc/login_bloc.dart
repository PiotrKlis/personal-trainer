import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/login/event/login_event.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';
import 'package:personal_trainer/app/util/auto_route_navigator.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginProvider loginProvider = GetIt.I.get<LoginProvider>();
  final FirebaseProvider firebaseProvider = GetIt.I.get<FirebaseProvider>();
  final AutoRouteNavigator _autoRouteNavigator = AutoRouteNavigator();

  LoginBloc(LoginState initialState) : super(initialState) {
    on<InitFirebase>((event, emit) async {
      try {
        await firebaseProvider.init();
        String userId = await loginProvider.getUserId();
        UserType userType = await loginProvider.getUserType(userId);
        emit(LoginState.success(userType: userType));
      } catch (error) {
        emit(LoginState.error(error: error.toString()));
      }
    });

    on<LogIn>((event, emit) async {
      try {
        UserType userType =
            await loginProvider.loginUser(event.login, event.password);
        emit(LoginState.success(userType: userType));
      } catch (error) {
        emit(LoginState.error(error: error.toString()));
      }
    });

    on<NavigateLoggedIn>((event, emit) async {
      switch (event.userType) {
        case UserType.TRAINER:
          _autoRouteNavigator.navigateToChooseAccountScreen();
          break;
        case UserType.CLIENT:
          _autoRouteNavigator.navigateToClientScreen();
          break;
      }
    });

    on<NavigateLoggedOut>((event, emit) async {
      _autoRouteNavigator.navigateToLoginScreen();
    });

    on<NavigateToRegister>((event, emit) async {
      _autoRouteNavigator.navigateToRegister();
    });
  }
}
