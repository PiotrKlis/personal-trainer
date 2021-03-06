import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = Initial;
  const factory RegisterState.success() = Succes;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.error({required String error}) = Error;
}