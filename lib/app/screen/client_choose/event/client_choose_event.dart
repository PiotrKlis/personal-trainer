import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_choose_event.freezed.dart';

@freezed
class ClientChooseEvent with _$ClientChooseEvent {
  const factory ClientChooseEvent.getClients({required String trainerId}) = GetClients;
  const factory ClientChooseEvent.inviteClient() = InviteClient;
}