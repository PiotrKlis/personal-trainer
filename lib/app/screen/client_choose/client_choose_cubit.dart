import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/domain/model/client.dart';

class ClientChooseCubit extends Cubit<ClientChooseState> {
  ClientChooseCubit(initialState, this.clientChooseProvider)
      : super(initialState);

  final ClientChooseProvider clientChooseProvider;

  void getClientsData(String trainerId) async {
    clientChooseProvider.getClientsFor(trainerId).then((clients) {
      emit(ClientsData(clients));
    });
  }
}

abstract class ClientChooseState {}

class ClientsData extends ClientChooseState {
  final List<Client> clients;

  ClientsData(this.clients);
}

class ClientChooseLoading extends ClientChooseState {}

class ClientChooseProvider {
  Future<List<Client>> getClientsFor(String trainerId) async {
    try {
      var trainerData = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.email)
          .collection('trainer')
          .doc('data')
          .get();

      var clientIds = List.from(trainerData.get('clients'));

      return Future.wait(clientIds.map((clientId) {
        return FirebaseFirestore.instance
            .collection('users')
            .doc(clientId)
            .collection('client')
            .doc('data')
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
