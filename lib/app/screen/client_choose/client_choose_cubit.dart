import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/client_choose/client_choose_state.dart';
import 'package:personal_trainer/data/provider/client_choose_provider.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/client.dart';

class ClientChooseCubit extends Cubit<ClientChooseState> {
  ClientChooseCubit(initialState) : super(initialState);

  final ClientChooseProvider clientChooseProvider = GetIt.I.get<ClientChooseProvider>();

  void getClientsData(String trainerId) async {
    clientChooseProvider.getClientsFor(trainerId).then((clients) {
      emit(ClientsData(clients));
    }).catchError((error) {
      emit(ClientChooseFetchFailed(error.toString()));
    });
  }
}
