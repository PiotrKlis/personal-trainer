abstract class RegisterState {}

class RegisterLoading extends RegisterState {}

class Registered extends RegisterState {}

class RegisterFailed extends RegisterState {
  final String error;

  RegisterFailed(this.error);
}
