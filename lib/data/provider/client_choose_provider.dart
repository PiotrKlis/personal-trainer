import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/mapper/client_mapper.dart';
import 'package:personal_trainer/domain/model/client.dart';

class ClientChooseProvider {

  ClientMapper _clientMapper = GetIt.I.get<ClientMapper>();

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
            .then((clientData) => _clientMapper.mapToClient(clientData.data()!));
      }).toList());
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }
}