// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
class _$TrackTearOff {
  const _$TrackTearOff();

  _Track call(
      {int? maxWidth,
      String? type,
      String? id,
      double? duration,
      double? maxFrameRate,
      int? maxHeight,
      String? maxChannelLayout,
      int? maxChannels}) {
    return _Track(
      maxWidth: maxWidth,
      type: type,
      id: id,
      duration: duration,
      maxFrameRate: maxFrameRate,
      maxHeight: maxHeight,
      maxChannelLayout: maxChannelLayout,
      maxChannels: maxChannels,
    );
  }

  Track fromJson(Map<String, Object?> json) {
    return Track.fromJson(json);
  }
}

/// @nodoc
const $Track = _$TrackTearOff();

/// @nodoc
mixin _$Track {
  int? get maxWidth => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  double? get duration => throw _privateConstructorUsedError;
  double? get maxFrameRate => throw _privateConstructorUsedError;
  int? get maxHeight => throw _privateConstructorUsedError;
  String? get maxChannelLayout => throw _privateConstructorUsedError;
  int? get maxChannels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res>;
  $Res call(
      {int? maxWidth,
      String? type,
      String? id,
      double? duration,
      double? maxFrameRate,
      int? maxHeight,
      String? maxChannelLayout,
      int? maxChannels});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res> implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  final Track _value;
  // ignore: unused_field
  final $Res Function(Track) _then;

  @override
  $Res call({
    Object? maxWidth = freezed,
    Object? type = freezed,
    Object? id = freezed,
    Object? duration = freezed,
    Object? maxFrameRate = freezed,
    Object? maxHeight = freezed,
    Object? maxChannelLayout = freezed,
    Object? maxChannels = freezed,
  }) {
    return _then(_value.copyWith(
      maxWidth: maxWidth == freezed
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      maxFrameRate: maxFrameRate == freezed
          ? _value.maxFrameRate
          : maxFrameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeight: maxHeight == freezed
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChannelLayout: maxChannelLayout == freezed
          ? _value.maxChannelLayout
          : maxChannelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      maxChannels: maxChannels == freezed
          ? _value.maxChannels
          : maxChannels // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$TrackCopyWith(_Track value, $Res Function(_Track) then) =
      __$TrackCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? maxWidth,
      String? type,
      String? id,
      double? duration,
      double? maxFrameRate,
      int? maxHeight,
      String? maxChannelLayout,
      int? maxChannels});
}

/// @nodoc
class __$TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res>
    implements _$TrackCopyWith<$Res> {
  __$TrackCopyWithImpl(_Track _value, $Res Function(_Track) _then)
      : super(_value, (v) => _then(v as _Track));

  @override
  _Track get _value => super._value as _Track;

  @override
  $Res call({
    Object? maxWidth = freezed,
    Object? type = freezed,
    Object? id = freezed,
    Object? duration = freezed,
    Object? maxFrameRate = freezed,
    Object? maxHeight = freezed,
    Object? maxChannelLayout = freezed,
    Object? maxChannels = freezed,
  }) {
    return _then(_Track(
      maxWidth: maxWidth == freezed
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      maxFrameRate: maxFrameRate == freezed
          ? _value.maxFrameRate
          : maxFrameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeight: maxHeight == freezed
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChannelLayout: maxChannelLayout == freezed
          ? _value.maxChannelLayout
          : maxChannelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      maxChannels: maxChannels == freezed
          ? _value.maxChannels
          : maxChannels // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Track implements _Track {
  const _$_Track(
      {this.maxWidth,
      this.type,
      this.id,
      this.duration,
      this.maxFrameRate,
      this.maxHeight,
      this.maxChannelLayout,
      this.maxChannels});

  factory _$_Track.fromJson(Map<String, dynamic> json) =>
      _$$_TrackFromJson(json);

  @override
  final int? maxWidth;
  @override
  final String? type;
  @override
  final String? id;
  @override
  final double? duration;
  @override
  final double? maxFrameRate;
  @override
  final int? maxHeight;
  @override
  final String? maxChannelLayout;
  @override
  final int? maxChannels;

  @override
  String toString() {
    return 'Track(maxWidth: $maxWidth, type: $type, id: $id, duration: $duration, maxFrameRate: $maxFrameRate, maxHeight: $maxHeight, maxChannelLayout: $maxChannelLayout, maxChannels: $maxChannels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Track &&
            const DeepCollectionEquality().equals(other.maxWidth, maxWidth) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.maxFrameRate, maxFrameRate) &&
            const DeepCollectionEquality().equals(other.maxHeight, maxHeight) &&
            const DeepCollectionEquality()
                .equals(other.maxChannelLayout, maxChannelLayout) &&
            const DeepCollectionEquality()
                .equals(other.maxChannels, maxChannels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxWidth),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(maxFrameRate),
      const DeepCollectionEquality().hash(maxHeight),
      const DeepCollectionEquality().hash(maxChannelLayout),
      const DeepCollectionEquality().hash(maxChannels));

  @JsonKey(ignore: true)
  @override
  _$TrackCopyWith<_Track> get copyWith =>
      __$TrackCopyWithImpl<_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackToJson(this);
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {int? maxWidth,
      String? type,
      String? id,
      double? duration,
      double? maxFrameRate,
      int? maxHeight,
      String? maxChannelLayout,
      int? maxChannels}) = _$_Track;

  factory _Track.fromJson(Map<String, dynamic> json) = _$_Track.fromJson;

  @override
  int? get maxWidth;
  @override
  String? get type;
  @override
  String? get id;
  @override
  double? get duration;
  @override
  double? get maxFrameRate;
  @override
  int? get maxHeight;
  @override
  String? get maxChannelLayout;
  @override
  int? get maxChannels;
  @override
  @JsonKey(ignore: true)
  _$TrackCopyWith<_Track> get copyWith => throw _privateConstructorUsedError;
}
