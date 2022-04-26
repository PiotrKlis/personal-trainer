import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/app_router.gr.dart';
import 'package:personal_trainer/app/core/get_it_config.dart';
import 'package:personal_trainer/app/screen/login/event/login_event.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';
import 'package:personal_trainer/app/util/event_transformer.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/auth_provider.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthProvider _authProvider = GetIt.I.get<AuthProvider>();
  final FirebaseProvider _firebaseProvider = GetIt.I.get<FirebaseProvider>();

  LoginBloc(LoginState initialState) : super(initialState) {
    on<InitFirebase>((event, emit) async {
      try {
        await _firebaseProvider.init();
        String userId = await _authProvider.getUserId();
        UserType userType = await _authProvider.getUserType(userId);
        emit(LoginState.success(userType: userType));
      } catch (error) {
        emit(LoginState.error(error: error.toString()));
      }
    });

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
          getIt.get<AppRouter>().push(AccountChooseRoute());
          break;
        case UserType.CLIENT:
          getIt.get<AppRouter>().push(ClientRoute());
          break;
      }
    });

    on<NavigateLoggedOut>((event, emit) async {
      GetIt.I<AppRouter>().replace(LoginRoute());
    });

    on<NavigateToRegister>((event, emit) async {
      GetIt.I<AppRouter>().push(RegisterRoute());
    });

    on<NavigateToPasswordReset>((event, emit) async {
      GetIt.I<AppRouter>().push(PasswordResetRoute());
    });
  }
}
