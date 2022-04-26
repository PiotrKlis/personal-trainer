import 'package:injectable/injectable.dart';
import 'package:personal_trainer/domain/model/client.dart';

@injectable
class ClientMapper {
  Client mapToClient(Map<String, dynamic> data) {
    return Client(
        id: data['id'],
        email: data['email'],
        name: data['name'],
        trainerEmail: data['trainerEmail']);
  }
}
