import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/data/util/response.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(LoginState initialState, this.loginProvider) : super(initialState);
  final LoginProvider loginProvider;

  Future<LoginState> loginUser(String email, String password) async {
    var response = await loginProvider.loginUser(email, password);
    if (response is UserLoginSuccess) {
      return LoginSuccess(response.appUser);
    } else if (response is Failure) {
      return LoginFailed(response.error);
    } else {
      return LoginFailed("Unknown login error");
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

  Future<LoginState> getUserData(String? email) async {
    var response = await loginProvider.getUserData(email);
    if (response is UserLoginSuccess) {
      return LoginSuccess(response.appUser);
    } else if (response is Failure) {
      return LoginFailed(response.error);
    } else {
      return LoginFailed('getUserData unknown error');
    }
  }
}
