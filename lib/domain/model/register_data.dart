import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterData {
  final String email;
  final String displayName;
  final String password;
  final String trainerEmail;
  final UserType userType;

  RegisterData(this.email, this.displayName, this.password, this.trainerEmail,
      this.userType);
}
