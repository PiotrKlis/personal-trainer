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
