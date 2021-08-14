abstract class LoginEvent {}
class UserLoginEvent extends LoginEvent {
  final String login;
  final String password;

  UserLoginEvent(this.login, this.password);
}
