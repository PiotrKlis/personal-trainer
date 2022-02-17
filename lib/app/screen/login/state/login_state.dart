import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/domain/model/user_type.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;

  const factory LoginState.success({required UserType userType}) = Success;
  const factory LoginState.loading() = Loading;

  const factory LoginState.error({required String error}) = Error;
}
