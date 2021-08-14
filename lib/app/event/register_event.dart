import 'package:personal_trainer/domain/model/user_type.dart';

abstract class RegisterEvent {}

class UserRegisterEvent extends RegisterEvent {
  final String userEmail;
  final String name;
  final String password;
  final String trainerEmail;
  final UserType userType;

  UserRegisterEvent(this.userEmail, this.name, this.password, this.trainerEmail,
      this.userType);
}
