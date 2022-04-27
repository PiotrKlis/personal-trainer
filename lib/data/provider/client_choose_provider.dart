import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_trainer/app/model/client.dart';
import 'package:personal_trainer/data/mapper/client_mapper.dart';
import 'package:personal_trainer/data/util/const.dart';

@injectable
class ClientChooseProvider {

  final ClientMapper _clientMapper = GetIt.I.get<ClientMapper>();

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
