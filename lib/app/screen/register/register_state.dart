import 'package:personal_trainer/domain/model/user_type.dart';

abstract class RegisterState {}

class UserTypeChanged extends RegisterState {}

class RegisterLoading extends RegisterState {}

class Registered extends RegisterState {}

class RegisterFailed extends RegisterState {
  final String error;

  RegisterFailed(this.error);
}

abstract class RegisterEvent {}

class ChangeUserType extends RegisterEvent {
  final UserType userType;

  ChangeUserType(this.userType);
}
