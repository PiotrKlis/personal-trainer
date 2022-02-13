import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.logIn(
      {required String login, required String password}) = LogIn;
  const factory LoginEvent.initFirebase() = InitFirebase;
}
