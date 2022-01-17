
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playback_id.freezed.dart';
part 'playback_id.g.dart';

@freezed
class PlaybackId with _$PlaybackId {
  const factory PlaybackId({
    String? policy,
    String? id,
  }) = _PlaybackId;

  factory PlaybackId.fromJson(Map<String, dynamic> json) => _$PlaybackIdFromJson(json);

}
//
//   String policy;
//   String id;
//
//   factory PlaybackId.fromRawJson(String str) =>
//       PlaybackId.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory PlaybackId.fromJson(Map<String, dynamic> json) => PlaybackId(
//         policy: json["policy"] == null ? null : json["policy"],
//         id: json["id"] == null ? null : json["id"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "policy": policy == null ? null : policy,
//         "id": id == null ? null : id,
//       };
// }
