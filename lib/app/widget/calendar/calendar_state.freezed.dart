// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers)
        eventMarkersData,
    required TResult Function(Map<DateTime, bool> events) loadEventMarkers,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult? Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventForDate value) eventMarkersData,
    required TResult Function(_LoadEvents value) loadEventMarkers,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventForDate value)? eventMarkersData,
    TResult? Function(_LoadEvents value)? loadEventMarkers,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkersData,
    TResult Function(_LoadEvents value)? loadEventMarkers,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventForDateCopyWith<$Res> {
  factory _$$_EventForDateCopyWith(
          _$_EventForDate value, $Res Function(_$_EventForDate) then) =
      __$$_EventForDateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, bool> eventMarkers});
}

/// @nodoc
class __$$_EventForDateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_EventForDate>
    implements _$$_EventForDateCopyWith<$Res> {
  __$$_EventForDateCopyWithImpl(
      _$_EventForDate _value, $Res Function(_$_EventForDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventMarkers = null,
  }) {
    return _then(_$_EventForDate(
      eventMarkers: null == eventMarkers
          ? _value._eventMarkers
          : eventMarkers // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, bool>,
    ));
  }
}

/// @nodoc

class _$_EventForDate implements _EventForDate {
  const _$_EventForDate({required final Map<DateTime, bool> eventMarkers})
      : _eventMarkers = eventMarkers;

  final Map<DateTime, bool> _eventMarkers;
  @override
  Map<DateTime, bool> get eventMarkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventMarkers);
  }

  @override
  String toString() {
    return 'CalendarState.eventMarkersData(eventMarkers: $eventMarkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventForDate &&
            const DeepCollectionEquality()
                .equals(other._eventMarkers, _eventMarkers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_eventMarkers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventForDateCopyWith<_$_EventForDate> get copyWith =>
      __$$_EventForDateCopyWithImpl<_$_EventForDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers)
        eventMarkersData,
    required TResult Function(Map<DateTime, bool> events) loadEventMarkers,
    required TResult Function(String error) error,
  }) {
    return eventMarkersData(eventMarkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult? Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult? Function(String error)? error,
  }) {
    return eventMarkersData?.call(eventMarkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (eventMarkersData != null) {
      return eventMarkersData(eventMarkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventForDate value) eventMarkersData,
    required TResult Function(_LoadEvents value) loadEventMarkers,
    required TResult Function(_Error value) error,
  }) {
    return eventMarkersData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventForDate value)? eventMarkersData,
    TResult? Function(_LoadEvents value)? loadEventMarkers,
    TResult? Function(_Error value)? error,
  }) {
    return eventMarkersData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkersData,
    TResult Function(_LoadEvents value)? loadEventMarkers,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (eventMarkersData != null) {
      return eventMarkersData(this);
    }
    return orElse();
  }
}

abstract class _EventForDate implements CalendarState {
  const factory _EventForDate(
      {required final Map<DateTime, bool> eventMarkers}) = _$_EventForDate;

  Map<DateTime, bool> get eventMarkers;
  @JsonKey(ignore: true)
  _$$_EventForDateCopyWith<_$_EventForDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadEventsCopyWith<$Res> {
  factory _$$_LoadEventsCopyWith(
          _$_LoadEvents value, $Res Function(_$_LoadEvents) then) =
      __$$_LoadEventsCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, bool> events});
}

/// @nodoc
class __$$_LoadEventsCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_LoadEvents>
    implements _$$_LoadEventsCopyWith<$Res> {
  __$$_LoadEventsCopyWithImpl(
      _$_LoadEvents _value, $Res Function(_$_LoadEvents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_LoadEvents(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, bool>,
    ));
  }
}

/// @nodoc

class _$_LoadEvents implements _LoadEvents {
  const _$_LoadEvents({required final Map<DateTime, bool> events})
      : _events = events;

  final Map<DateTime, bool> _events;
  @override
  Map<DateTime, bool> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_events);
  }

  @override
  String toString() {
    return 'CalendarState.loadEventMarkers(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadEvents &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadEventsCopyWith<_$_LoadEvents> get copyWith =>
      __$$_LoadEventsCopyWithImpl<_$_LoadEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers)
        eventMarkersData,
    required TResult Function(Map<DateTime, bool> events) loadEventMarkers,
    required TResult Function(String error) error,
  }) {
    return loadEventMarkers(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult? Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult? Function(String error)? error,
  }) {
    return loadEventMarkers?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadEventMarkers != null) {
      return loadEventMarkers(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventForDate value) eventMarkersData,
    required TResult Function(_LoadEvents value) loadEventMarkers,
    required TResult Function(_Error value) error,
  }) {
    return loadEventMarkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventForDate value)? eventMarkersData,
    TResult? Function(_LoadEvents value)? loadEventMarkers,
    TResult? Function(_Error value)? error,
  }) {
    return loadEventMarkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkersData,
    TResult Function(_LoadEvents value)? loadEventMarkers,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadEventMarkers != null) {
      return loadEventMarkers(this);
    }
    return orElse();
  }
}

abstract class _LoadEvents implements CalendarState {
  const factory _LoadEvents({required final Map<DateTime, bool> events}) =
      _$_LoadEvents;

  Map<DateTime, bool> get events;
  @JsonKey(ignore: true)
  _$$_LoadEventsCopyWith<_$_LoadEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CalendarState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers)
        eventMarkersData,
    required TResult Function(Map<DateTime, bool> events) loadEventMarkers,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult? Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkersData,
    TResult Function(Map<DateTime, bool> events)? loadEventMarkers,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventForDate value) eventMarkersData,
    required TResult Function(_LoadEvents value) loadEventMarkers,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventForDate value)? eventMarkersData,
    TResult? Function(_LoadEvents value)? loadEventMarkers,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkersData,
    TResult Function(_LoadEvents value)? loadEventMarkers,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CalendarState {
  const factory _Error({required final String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
