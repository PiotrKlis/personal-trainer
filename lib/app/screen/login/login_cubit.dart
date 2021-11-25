import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/login/login_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(LoginState initialState) : super(initialState);
  final LoginProvider loginProvider = GetIt.I.get<LoginProvider>();
  final FirebaseProvider firebaseProvider = GetIt.I.get<FirebaseProvider>();

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

  void _handleInitializedFirebase() {
    loginProvider.getUser().then((user) async {
      loginProvider.getUserData(user.uid).then((appUser) {
        emit(LoginSuccess(appUser));
      }).catchError((error) {
        emit(LoginFailed(error.toString()));
      });
    }).catchError((error) {
      emit(LoginFailed(error));
    });
  }
}
