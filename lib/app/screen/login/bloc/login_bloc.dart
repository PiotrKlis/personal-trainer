import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/core/dependency_injection/get_it_config.dart';
import 'package:personal_trainer/app/core/navigation/app_router.gr.dart';
import 'package:personal_trainer/app/model/user_type.dart';
import 'package:personal_trainer/app/screen/login/event/login_event.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';
import 'package:personal_trainer/app/util/event_transformer.dart';
import 'package:personal_trainer/data/provider/auth_provider.dart';
import 'package:personal_trainer/data/util/const.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthProvider _authProvider = GetIt.I.get<AuthProvider>();

  LoginBloc(LoginState initialState) : super(initialState) {
    on<LogIn>((event, emit) async {
      try {
        emit(LoginState.loading());
        UserType userType =
            await _authProvider.loginUser(event.login, event.password);
        emit(LoginState.success(userType: userType));
      } catch (error) {
        if (error is FirebaseAuthException) {
          return emit(LoginState.error(error: error.code));
        } else {
          return emit(LoginState.error(error: error.toString()));
        }
      }
    },
        transformer:
            debounce(Duration(milliseconds: DurationConst.longerDebounceTime)));

    on<NavigateLoggedIn>((event, emit) async {
      switch (event.userType) {
        case UserType.TRAINER:
          getIt.get<AppRouter>().replace(AccountChooseRoute());
          break;
        case UserType.CLIENT:
          getIt.get<AppRouter>().replace(ClientRoute());
          break;
      }
    });

    on<NavigateLoggedOut>((event, emit) async {
      getIt.get<AppRouter>().replace(LoginRoute());
    });

    on<NavigateToRegister>((event, emit) async {
      getIt.get<AppRouter>().push(RegisterRoute());
    });

    on<NavigateToPasswordReset>((event, emit) async {
      getIt.get<AppRouter>().push(PasswordResetRoute());
    });
  }
}
