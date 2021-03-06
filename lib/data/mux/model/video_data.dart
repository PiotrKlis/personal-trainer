// To parse this JSON data, do
//
//     final videoData = videoDataFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common/data.dart';
part 'video_data.freezed.dart';
part 'video_data.g.dart';
@freezed
class VideoData with _$VideoData {
  const factory VideoData({
    required Data data,
  }) = _VideoData;

  factory VideoData.fromJson(Map<String, dynamic> json) => _$VideoDataFromJson(json);
}
