import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/login/login_state.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/data/util/response.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(LoginState initialState, this.loginProvider) : super(initialState);
  final LoginProvider loginProvider;

  void loginUser(String email, String password) async {
    loginProvider.loginUser(email, password).then((value) => "");

    var response = await loginProvider.loginUser(email, password);
    if (response is UserLoginSuccess) {
      emit(LoginSuccess(response.appUser));
    } else if (response is Failure) {
      emit(LoginFailed(response.error));
    } else {
      emit(LoginFailed("Unknown login error"));
    }
  }

  Future<bool> isUserLoggedIn() async {
    var response = loginProvider.isUserLoggedIn();
    if (response is Success) {
      return true;
    } else {
      return false;
    }
  }

  String? getUserEmail() => loginProvider.getUserEmail();

  void getUserData(String? email) async {
    var response = await loginProvider.getUserData(email);
    if (response is UserLoginSuccess) {
      emit(LoginSuccess(response.appUser));
    } else if (response is Failure) {
      emit(LoginFailed(response.error));
    } else {
      emit(LoginFailed('getUserData unknown error'));
    }
  }
}
