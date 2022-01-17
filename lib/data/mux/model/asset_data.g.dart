// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssetData _$$_AssetDataFromJson(Map<String, dynamic> json) => _$_AssetData(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AssetDataToJson(_$_AssetData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
