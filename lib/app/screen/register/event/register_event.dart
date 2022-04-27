import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/app/model/register_data.dart';
part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent{
  const factory RegisterEvent.register(
      {required RegisterData registerData}) = Register;
}
