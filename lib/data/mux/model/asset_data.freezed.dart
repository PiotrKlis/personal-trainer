// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetData _$AssetDataFromJson(Map<String, dynamic> json) {
  return _AssetData.fromJson(json);
}

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
      _$AssetDataCopyWithImpl<$Res, AssetData>;
  @useResult
  $Res call({List<Data> data});
}

/// @nodoc
class _$AssetDataCopyWithImpl<$Res, $Val extends AssetData>
    implements $AssetDataCopyWith<$Res> {
  _$AssetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssetDataCopyWith<$Res> implements $AssetDataCopyWith<$Res> {
  factory _$$_AssetDataCopyWith(
          _$_AssetData value, $Res Function(_$_AssetData) then) =
      __$$_AssetDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Data> data});
}

/// @nodoc
class __$$_AssetDataCopyWithImpl<$Res>
    extends _$AssetDataCopyWithImpl<$Res, _$_AssetData>
    implements _$$_AssetDataCopyWith<$Res> {
  __$$_AssetDataCopyWithImpl(
      _$_AssetData _value, $Res Function(_$_AssetData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AssetData(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetData implements _AssetData {
  const _$_AssetData({required final List<Data> data}) : _data = data;

  factory _$_AssetData.fromJson(Map<String, dynamic> json) =>
      _$$_AssetDataFromJson(json);

  final List<Data> _data;
  @override
  List<Data> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AssetData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssetDataCopyWith<_$_AssetData> get copyWith =>
      __$$_AssetDataCopyWithImpl<_$_AssetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetDataToJson(
      this,
    );
  }
}

abstract class _AssetData implements AssetData {
  const factory _AssetData({required final List<Data> data}) = _$_AssetData;

  factory _AssetData.fromJson(Map<String, dynamic> json) =
      _$_AssetData.fromJson;

  @override
  List<Data> get data;
  @override
  @JsonKey(ignore: true)
  _$$_AssetDataCopyWith<_$_AssetData> get copyWith =>
      throw _privateConstructorUsedError;
}
