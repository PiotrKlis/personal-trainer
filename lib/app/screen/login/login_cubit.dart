import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/login/login_state.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(LoginState initialState, this.loginProvider) : super(initialState);
  final LoginProvider loginProvider;

  loginUser(String email, String password) async {
    loginProvider.loginUser(email, password).then((appUser) {
      emit(LoginSuccess(appUser));
    }).catchError((error) {
      emit(LoginFailed(error));
    });
  }

  handleInitializedFirebase() {
    loginProvider.getUser().then((user) async {
      loginProvider.getUserData(user.uid).then((appUser) {
        emit(LoginSuccess(appUser));
      }).catchError((error) {
        emit(LoginFailed(error));
      });
    });
  }
}
