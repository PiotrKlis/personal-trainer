// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoData _$VideoDataFromJson(Map<String, dynamic> json) {
  return _VideoData.fromJson(json);
}

/// @nodoc
mixin _$VideoData {
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDataCopyWith<VideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDataCopyWith<$Res> {
  factory $VideoDataCopyWith(VideoData value, $Res Function(VideoData) then) =
      _$VideoDataCopyWithImpl<$Res>;
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$VideoDataCopyWithImpl<$Res> implements $VideoDataCopyWith<$Res> {
  _$VideoDataCopyWithImpl(this._value, this._then);

  final VideoData _value;
  // ignore: unused_field
  final $Res Function(VideoData) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$VideoDataCopyWith<$Res> implements $VideoDataCopyWith<$Res> {
  factory _$VideoDataCopyWith(
          _VideoData value, $Res Function(_VideoData) then) =
      __$VideoDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$VideoDataCopyWithImpl<$Res> extends _$VideoDataCopyWithImpl<$Res>
    implements _$VideoDataCopyWith<$Res> {
  __$VideoDataCopyWithImpl(_VideoData _value, $Res Function(_VideoData) _then)
      : super(_value, (v) => _then(v as _VideoData));

  @override
  _VideoData get _value => super._value as _VideoData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_VideoData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoData implements _VideoData {
  const _$_VideoData({required this.data});

  factory _$_VideoData.fromJson(Map<String, dynamic> json) =>
      _$$_VideoDataFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'VideoData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$VideoDataCopyWith<_VideoData> get copyWith =>
      __$VideoDataCopyWithImpl<_VideoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoDataToJson(this);
  }
}

abstract class _VideoData implements VideoData {
  const factory _VideoData({required final Data data}) = _$_VideoData;

  factory _VideoData.fromJson(Map<String, dynamic> json) =
      _$_VideoData.fromJson;

  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoDataCopyWith<_VideoData> get copyWith =>
      throw _privateConstructorUsedError;
}
