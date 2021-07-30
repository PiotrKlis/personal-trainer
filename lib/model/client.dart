import 'package:personal_trainer/model/app_user.dart';

class Client extends AppUser {
  final String id;
  final String email;
  final String name;
  String? trainerEmail;

  Client(
      {required this.id,
      required this.email,
      required this.name,
      this.trainerEmail});
}
