import 'package:personal_trainer/model/app_user.dart';
import 'package:personal_trainer/model/client.dart';

import 'client.dart';

class Trainer extends AppUser {
  final String id;
  final String email;
  final String name;
  List<String>? clientEmails;

  Trainer(
      {required this.id,
      required this.email,
      required this.name,
      this.clientEmails});
}
