import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/domain/model/register_data.dart';
import 'package:personal_trainer/domain/model/user_type.dart';
part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent{
  const factory RegisterEvent.register(
      {required RegisterData registerData}) = Register;
}
