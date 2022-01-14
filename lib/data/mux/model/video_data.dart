// To parse this JSON data, do
//
//     final videoData = videoDataFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common/data.dart';

@freezed
class VideoData with _$VideoData {
  const factory VideoData({
    required Data data,
  }) = _VideoData;
}
//
//   Data data;
//
//   factory VideoData.fromRawJson(String str) =>
//       VideoData.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory VideoData.fromJson(Map<String, dynamic> json) => VideoData(
//         data: json["data"] == null ? null : Data.fromJson(json["data"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "data": data == null ? null : data.toJson(),
//       };
// }
