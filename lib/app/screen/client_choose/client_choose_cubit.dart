import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/client_choose/client_choose_state.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/client.dart';

class ClientChooseCubit extends Cubit<ClientChooseState> {
  ClientChooseCubit(initialState, this.clientChooseProvider)
      : super(initialState);

  final ClientChooseProvider clientChooseProvider;

  void getClientsData(String trainerId) async {
    clientChooseProvider.getClientsFor(trainerId).then((clients) {
      emit(ClientsData(clients));
    }).catchError((error) {
      emit(ClientChooseFetchFailed(error.toString()));
    });
  }
}

class ClientChooseProvider {
  Future<List<Client>> getClientsFor(String trainerId) async {
    try {
      var trainerData = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(trainerId)
          .collection(FirebaseConstants.trainerCollection)
          .doc(FirebaseConstants.dataCollection)
          .get();

      var clientIds = List.from(trainerData.get('clients'));

      return Future.wait(clientIds.map((clientId) {
        return FirebaseFirestore.instance
            .collection(FirebaseConstants.usersCollection)
            .doc(clientId)
            .collection(FirebaseConstants.clientCollection)
            .doc(FirebaseConstants.dataCollection)
            .get()
            .then((clientData) => _mapToClient(clientData.data()!));
      }).toList());
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Client _mapToClient(Map<String, dynamic> data) {
    return Client(
        id: data['id'],
        email: data['email'],
        name: data['name'],
        trainerEmail: data['trainerEmail']);
  }
}
