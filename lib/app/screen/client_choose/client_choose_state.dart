import 'package:personal_trainer/domain/model/client.dart';

abstract class ClientChooseState {}

class ClientsData extends ClientChooseState {
  final List<Client> clients;

  ClientsData(this.clients);
}

class ClientChooseLoading extends ClientChooseState {}

class ClientChooseFetchFailed extends ClientChooseState {
  final String error;

  ClientChooseFetchFailed(this.error);
}
