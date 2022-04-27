import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/app/model/user_type.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initFirebase() = InitFirebase;

  const factory LoginEvent.logIn(
      {required String login, required String password}) = LogIn;

  const factory LoginEvent.navigateLoggedIn({required UserType userType}) =
      NavigateLoggedIn;

  const factory LoginEvent.navigateLoggedOut() = NavigateLoggedOut;
  const factory LoginEvent.navigateToRegister() = NavigateToRegister;
  const factory LoginEvent.navigateToPasswordReset() = NavigateToPasswordReset;
}
