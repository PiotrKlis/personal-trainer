import 'package:personal_trainer/domain/model/client.dart';

class ClientMapper {
  Client mapToClient(Map<String, dynamic> data) {
    return Client(
        id: data['id'],
        email: data['email'],
        name: data['name'],
        trainerEmail: data['trainerEmail']);
  }
}
