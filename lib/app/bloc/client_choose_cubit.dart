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

class ClientChooseProvider {
  Future<List<Client>> getClientsFor(String trainerId) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.email)
          .collection('trainer')
          .doc('data')
          .get().then((trainerData) {
        return Future.value(List.from(trainerData.data()?['clients']));
      });
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }
}
