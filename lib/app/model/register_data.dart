import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/app/model/user_type.dart';

part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData(
      {required String email,
      required String displayName,
      required String password,
      required String trainerEmail,
      required UserType userType}) = _RegisterData;
}
