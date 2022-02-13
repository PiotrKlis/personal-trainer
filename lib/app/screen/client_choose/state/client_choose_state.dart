
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/domain/model/client.dart';

part 'client_choose_state.freezed.dart';

@freezed
class ClientChooseState with _$ClientChooseState {
  const factory ClientChooseState.initial() = _Initial;
  const factory ClientChooseState.loading() = _Loading;
  const factory ClientChooseState.content({required List<Client> clients}) = _Content;
  const factory ClientChooseState.error({required String error}) = _Error;
}
