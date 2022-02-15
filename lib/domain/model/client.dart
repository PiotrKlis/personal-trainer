import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';

@freezed
class Client with _$Client {
  const factory Client({
    @Default("") String phoneNumber,
    required String id,
    required String email,
    required String name,
    required String trainerEmail,
  }) = _Client;
}
