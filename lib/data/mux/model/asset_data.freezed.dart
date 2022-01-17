// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetData _$AssetDataFromJson(Map<String, dynamic> json) {
  return _AssetData.fromJson(json);
}

/// @nodoc
class _$AssetDataTearOff {
  const _$AssetDataTearOff();

  _AssetData call({required List<Data> data}) {
    return _AssetData(
      data: data,
    );
  }

  AssetData fromJson(Map<String, Object?> json) {
    return AssetData.fromJson(json);
  }
}

/// @nodoc
const $AssetData = _$AssetDataTearOff();

/// @nodoc
mixin _$AssetData {
  List<Data> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetDataCopyWith<AssetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetDataCopyWith<$Res> {
  factory $AssetDataCopyWith(AssetData value, $Res Function(AssetData) then) =
      _$AssetDataCopyWithImpl<$Res>;
  $Res call({List<Data> data});
}

/// @nodoc
class _$AssetDataCopyWithImpl<$Res> implements $AssetDataCopyWith<$Res> {
  _$AssetDataCopyWithImpl(this._value, this._then);

  final AssetData _value;
  // ignore: unused_field
  final $Res Function(AssetData) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
abstract class _$AssetDataCopyWith<$Res> implements $AssetDataCopyWith<$Res> {
  factory _$AssetDataCopyWith(
          _AssetData value, $Res Function(_AssetData) then) =
      __$AssetDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Data> data});
}

/// @nodoc
class __$AssetDataCopyWithImpl<$Res> extends _$AssetDataCopyWithImpl<$Res>
    implements _$AssetDataCopyWith<$Res> {
  __$AssetDataCopyWithImpl(_AssetData _value, $Res Function(_AssetData) _then)
      : super(_value, (v) => _then(v as _AssetData));

  @override
  _AssetData get _value => super._value as _AssetData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AssetData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetData implements _AssetData {
  const _$_AssetData({required this.data});

  factory _$_AssetData.fromJson(Map<String, dynamic> json) =>
      _$$_AssetDataFromJson(json);

  @override
  final List<Data> data;

  @override
  String toString() {
    return 'AssetData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AssetData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$AssetDataCopyWith<_AssetData> get copyWith =>
      __$AssetDataCopyWithImpl<_AssetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetDataToJson(this);
  }
}

abstract class _AssetData implements AssetData {
  const factory _AssetData({required List<Data> data}) = _$_AssetData;

  factory _AssetData.fromJson(Map<String, dynamic> json) =
      _$_AssetData.fromJson;

  @override
  List<Data> get data;
  @override
  @JsonKey(ignore: true)
  _$AssetDataCopyWith<_AssetData> get copyWith =>
      throw _privateConstructorUsedError;
}
