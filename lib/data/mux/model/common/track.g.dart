// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      maxWidth: json['maxWidth'] as int?,
      type: json['type'] as String?,
      id: json['id'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      maxFrameRate: (json['maxFrameRate'] as num?)?.toDouble(),
      maxHeight: json['maxHeight'] as int?,
      maxChannelLayout: json['maxChannelLayout'] as String?,
      maxChannels: json['maxChannels'] as int?,
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'maxWidth': instance.maxWidth,
      'type': instance.type,
      'id': instance.id,
      'duration': instance.duration,
      'maxFrameRate': instance.maxFrameRate,
      'maxHeight': instance.maxHeight,
      'maxChannelLayout': instance.maxChannelLayout,
      'maxChannels': instance.maxChannels,
    };
