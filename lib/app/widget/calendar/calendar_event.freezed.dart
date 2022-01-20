// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarEventTearOff {
  const _$CalendarEventTearOff();

  GetCalendarEventMarker getCalendarEventMarker(
      {required DateTime dateTime, required String clientId}) {
    return GetCalendarEventMarker(
      dateTime: dateTime,
      clientId: clientId,
    );
  }
}

/// @nodoc
const $CalendarEvent = _$CalendarEventTearOff();

/// @nodoc
mixin _$CalendarEvent {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime, String clientId)
        getCalendarEventMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime dateTime, String clientId)?
        getCalendarEventMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime, String clientId)?
        getCalendarEventMarker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCalendarEventMarker value)
        getCalendarEventMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCalendarEventMarker value)? getCalendarEventMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCalendarEventMarker value)? getCalendarEventMarker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res>;
  $Res call({DateTime dateTime, String clientId});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  final CalendarEvent _value;
  // ignore: unused_field
  final $Res Function(CalendarEvent) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? clientId = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetCalendarEventMarkerCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $GetCalendarEventMarkerCopyWith(GetCalendarEventMarker value,
          $Res Function(GetCalendarEventMarker) then) =
      _$GetCalendarEventMarkerCopyWithImpl<$Res>;
  @override
  $Res call({DateTime dateTime, String clientId});
}

/// @nodoc
class _$GetCalendarEventMarkerCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $GetCalendarEventMarkerCopyWith<$Res> {
  _$GetCalendarEventMarkerCopyWithImpl(GetCalendarEventMarker _value,
      $Res Function(GetCalendarEventMarker) _then)
      : super(_value, (v) => _then(v as GetCalendarEventMarker));

  @override
  GetCalendarEventMarker get _value => super._value as GetCalendarEventMarker;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? clientId = freezed,
  }) {
    return _then(GetCalendarEventMarker(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCalendarEventMarker implements GetCalendarEventMarker {
  const _$GetCalendarEventMarker(
      {required this.dateTime, required this.clientId});

  @override
  final DateTime dateTime;
  @override
  final String clientId;

  @override
  String toString() {
    return 'CalendarEvent.getCalendarEventMarker(dateTime: $dateTime, clientId: $clientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCalendarEventMarker &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.clientId, clientId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(clientId));

  @JsonKey(ignore: true)
  @override
  $GetCalendarEventMarkerCopyWith<GetCalendarEventMarker> get copyWith =>
      _$GetCalendarEventMarkerCopyWithImpl<GetCalendarEventMarker>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime, String clientId)
        getCalendarEventMarker,
  }) {
    return getCalendarEventMarker(dateTime, clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime dateTime, String clientId)?
        getCalendarEventMarker,
  }) {
    return getCalendarEventMarker?.call(dateTime, clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime, String clientId)?
        getCalendarEventMarker,
    required TResult orElse(),
  }) {
    if (getCalendarEventMarker != null) {
      return getCalendarEventMarker(dateTime, clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCalendarEventMarker value)
        getCalendarEventMarker,
  }) {
    return getCalendarEventMarker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCalendarEventMarker value)? getCalendarEventMarker,
  }) {
    return getCalendarEventMarker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCalendarEventMarker value)? getCalendarEventMarker,
    required TResult orElse(),
  }) {
    if (getCalendarEventMarker != null) {
      return getCalendarEventMarker(this);
    }
    return orElse();
  }
}

abstract class GetCalendarEventMarker implements CalendarEvent {
  const factory GetCalendarEventMarker(
      {required DateTime dateTime,
      required String clientId}) = _$GetCalendarEventMarker;

  @override
  DateTime get dateTime;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  $GetCalendarEventMarkerCopyWith<GetCalendarEventMarker> get copyWith =>
      throw _privateConstructorUsedError;
}
