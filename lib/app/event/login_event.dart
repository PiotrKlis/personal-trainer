abstract class LoginEvent {}
class UserLoginEvent extends LoginEvent {
  final String login;
  final String password;

  UserLoginEvent(this.login, this.password);
}

class UserAlreadyLoggedInEvent extends LoginEvent {
  final String login;
  final String password;

  UserAlreadyLoggedInEvent(this.login, this.password);
}

class UserNotLoggedInEvent extends Login