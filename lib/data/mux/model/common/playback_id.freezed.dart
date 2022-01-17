// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playback_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaybackId _$PlaybackIdFromJson(Map<String, dynamic> json) {
  return _PlaybackId.fromJson(json);
}

/// @nodoc
class _$PlaybackIdTearOff {
  const _$PlaybackIdTearOff();

  _PlaybackId call({String? policy, String? id}) {
    return _PlaybackId(
      policy: policy,
      id: id,
    );
  }

  PlaybackId fromJson(Map<String, Object?> json) {
    return PlaybackId.fromJson(json);
  }
}

/// @nodoc
const $PlaybackId = _$PlaybackIdTearOff();

/// @nodoc
mixin _$PlaybackId {
  String? get policy => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaybackIdCopyWith<PlaybackId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackIdCopyWith<$Res> {
  factory $PlaybackIdCopyWith(
          PlaybackId value, $Res Function(PlaybackId) then) =
      _$PlaybackIdCopyWithImpl<$Res>;
  $Res call({String? policy, String? id});
}

/// @nodoc
class _$PlaybackIdCopyWithImpl<$Res> implements $PlaybackIdCopyWith<$Res> {
  _$PlaybackIdCopyWithImpl(this._value, this._then);

  final PlaybackId _value;
  // ignore: unused_field
  final $Res Function(PlaybackId) _then;

  @override
  $Res call({
    Object? policy = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      policy: policy == freezed
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlaybackIdCopyWith<$Res> implements $PlaybackIdCopyWith<$Res> {
  factory _$PlaybackIdCopyWith(
          _PlaybackId value, $Res Function(_PlaybackId) then) =
      __$PlaybackIdCopyWithImpl<$Res>;
  @override
  $Res call({String? policy, String? id});
}

/// @nodoc
class __$PlaybackIdCopyWithImpl<$Res> extends _$PlaybackIdCopyWithImpl<$Res>
    implements _$PlaybackIdCopyWith<$Res> {
  __$PlaybackIdCopyWithImpl(
      _PlaybackId _value, $Res Function(_PlaybackId) _then)
      : super(_value, (v) => _then(v as _PlaybackId));

  @override
  _PlaybackId get _value => super._value as _PlaybackId;

  @override
  $Res call({
    Object? policy = freezed,
    Object? id = freezed,
  }) {
    return _then(_PlaybackId(
      policy: policy == freezed
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaybackId implements _PlaybackId {
  const _$_PlaybackId({this.policy, this.id});

  factory _$_PlaybackId.fromJson(Map<String, dynamic> json) =>
      _$$_PlaybackIdFromJson(json);

  @override
  final String? policy;
  @override
  final String? id;

  @override
  String toString() {
    return 'PlaybackId(policy: $policy, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaybackId &&
            const DeepCollectionEquality().equals(other.policy, policy) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(policy),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$PlaybackIdCopyWith<_PlaybackId> get copyWith =>
      __$PlaybackIdCopyWithImpl<_PlaybackId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaybackIdToJson(this);
  }
}

abstract class _PlaybackId implements PlaybackId {
  const factory _PlaybackId({String? policy, String? id}) = _$_PlaybackId;

  factory _PlaybackId.fromJson(Map<String, dynamic> json) =
      _$_PlaybackId.fromJson;

  @override
  String? get policy;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$PlaybackIdCopyWith<_PlaybackId> get copyWith =>
      throw _privateConstructorUsedError;
}
