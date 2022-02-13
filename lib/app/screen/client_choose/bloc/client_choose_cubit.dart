import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/client_choose/event/client_choose_event.dart';
import 'package:personal_trainer/app/screen/client_choose/state/client_choose_state.dart';
import 'package:personal_trainer/data/provider/client_choose_provider.dart';
import 'package:personal_trainer/domain/model/client.dart';

class ClientChooseBloc extends Bloc<ClientChooseEvent, ClientChooseState> {
  final ClientChooseProvider clientChooseProvider =
      GetIt.I.get<ClientChooseProvider>();

  ClientChooseBloc(initialState) : super(initialState) {
    on<GetClients>((event, emit) async {
      emit(ClientChooseState.loading());
      List<Client> clients =
          await clientChooseProvider.getClientsFor(event.trainerId);
      emit(ClientChooseState.content(clients: clients));
    });
  }
}
