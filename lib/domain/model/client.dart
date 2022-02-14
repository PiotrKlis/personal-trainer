import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required String id,
    required String email,
    required String name,
    required trainerEmail,
    @Default("") String phoneNumber
  }) = _Client;
}
