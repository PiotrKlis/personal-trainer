// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      test: json['test'] as bool?,
      maxStoredFrameRate: (json['maxStoredFrameRate'] as num?)?.toDouble(),
      status: json['status'] as String?,
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      maxStoredResolution: json['maxStoredResolution'] as String?,
      masterAccess: json['masterAccess'] as String?,
      playbackIds: (json['playbackIds'] as List<dynamic>?)
          ?.map((e) => PlaybackId.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      mp4Support: json['mp4Support'] as String?,
      aspectRatio: json['aspectRatio'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'test': instance.test,
      'maxStoredFrameRate': instance.maxStoredFrameRate,
      'status': instance.status,
      'tracks': instance.tracks,
      'id': instance.id,
      'maxStoredResolution': instance.maxStoredResolution,
      'masterAccess': instance.masterAccess,
      'playbackIds': instance.playbackIds,
      'createdAt': instance.createdAt,
      'duration': instance.duration,
      'mp4Support': instance.mp4Support,
      'aspectRatio': instance.aspectRatio,
    };
