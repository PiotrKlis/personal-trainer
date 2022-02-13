import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_user.dart';

@freezed
class NewClient with _$NewClient {
  const factory NewClient({required String id,
    required String email,
    required String name,
    String? trainerEmail}) = _NewClient;
}

class Client extends AppUser {
  final String id;
  final String email;
  final String name;
  String? trainerEmail;

  Client({required this.id,
    required this.email,
    required this.name,
    this.trainerEmail});
}
