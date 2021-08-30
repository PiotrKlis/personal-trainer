import 'package:personal_trainer/data/util/response.dart';
import 'package:personal_trainer/domain/model/app_user.dart';

abstract class LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final AppUser appUser;

  LoginSuccess(this.appUser);
}

class LoginFailed extends LoginState {
  final String error;

  LoginFailed(this.error);
}

class UserLoginSuccess extends Success {
  final AppUser appUser;

  UserLoginSuccess(this.appUser);
}