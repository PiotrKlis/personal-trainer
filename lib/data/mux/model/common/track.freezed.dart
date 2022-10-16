// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

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
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
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
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      maxFrameRate: freezed == maxFrameRate
          ? _value.maxFrameRate
          : maxFrameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeight: freezed == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChannelLayout: freezed == maxChannelLayout
          ? _value.maxChannelLayout
          : maxChannelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      maxChannels: freezed == maxChannels
          ? _value.maxChannels
          : maxChannels // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$_TrackCopyWith(_$_Track value, $Res Function(_$_Track) then) =
      __$$_TrackCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res, _$_Track>
    implements _$$_TrackCopyWith<$Res> {
  __$$_TrackCopyWithImpl(_$_Track _value, $Res Function(_$_Track) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_Track(
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      maxFrameRate: freezed == maxFrameRate
          ? _value.maxFrameRate
          : maxFrameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeight: freezed == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChannelLayout: freezed == maxChannelLayout
          ? _value.maxChannelLayout
          : maxChannelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      maxChannels: freezed == maxChannels
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
            other is _$_Track &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.maxFrameRate, maxFrameRate) ||
                other.maxFrameRate == maxFrameRate) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.maxChannelLayout, maxChannelLayout) ||
                other.maxChannelLayout == maxChannelLayout) &&
            (identical(other.maxChannels, maxChannels) ||
                other.maxChannels == maxChannels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxWidth, type, id, duration,
      maxFrameRate, maxHeight, maxChannelLayout, maxChannels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      __$$_TrackCopyWithImpl<_$_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {final int? maxWidth,
      final String? type,
      final String? id,
      final double? duration,
      final double? maxFrameRate,
      final int? maxHeight,
      final String? maxChannelLayout,
      final int? maxChannels}) = _$_Track;

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
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      throw _privateConstructorUsedError;
}
