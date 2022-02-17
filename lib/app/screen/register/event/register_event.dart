import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/domain/model/user_type.dart';
part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent{
  const factory RegisterEvent.register(
      {required String userEmail,
      required String name,
      required String password,
      required String trainerEmail,
      required UserType userType}) = Register;
}
