import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer.freezed.dart';

@freezed
class Trainer with _$Trainer {
  const factory Trainer({required String id,
    required String email,
    required String name,
    required List<String> clientIds,
    @Default("") String phoneNumber}) = _Trainer;
}
