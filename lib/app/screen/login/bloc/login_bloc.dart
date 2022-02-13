import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/login/event/login_event.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/domain/model/app_user.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginProvider loginProvider = GetIt.I.get<LoginProvider>();
  final FirebaseProvider firebaseProvider = GetIt.I.get<FirebaseProvider>();

  LoginBloc(LoginState initialState) : super(initialState) {
    on<LogIn>((event, emit) {

    });
    on<FirebaseInit>((event, emit) async {
      try {
        await firebaseProvider.init();
        _handleInitializedFirebase();
      } catch (error) {
        emit(LoginState.error(error: error.toString()));
      }
    });
  }

  void firebaseInit() {
    firebaseProvider
        .init()
        .then((_) => _handleInitializedFirebase())
        .catchError((error) => emit(LoginFailed(error)));
  }

  void loginUser(String email, String password) async {
    loginProvider.loginUser(email, password).then((appUser) {
      emit(LoginSuccess(appUser));
    }).catchError((error) {
      emit(LoginFailed(error.toString()));
    });
  }

  void _handleInitializedFirebase() async {
    User user = await loginProvider.getUser();
    //TODO: Get usertype instead of whole appUser
    AppUser appUser = await loginProvider.getUserData(user.uid);
    emit(LoginState.success(userType: userType));
  }
}
