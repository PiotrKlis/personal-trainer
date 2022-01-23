// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarStateTearOff {
  const _$CalendarStateTearOff();

  _EventForDate eventMarkers({required Map<DateTime, bool> eventMarkers}) {
    return _EventForDate(
      eventMarkers: eventMarkers,
    );
  }

  _LoadEvents loadEvents(
      {PAGE_NAVIGATION pageNavigation = PAGE_NAVIGATION.NO_NAVIGATION,
      required Map<DateTime, bool> events}) {
    return _LoadEvents(
      pageNavigation: pageNavigation,
      events: events,
    );
  }

  _Error error({required String error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $CalendarState = _$CalendarStateTearOff();

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers) eventMarkers,
    required TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)
        loadEvents,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventForDate value) eventMarkers,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;
}

/// @nodoc
abstract class _$EventForDateCopyWith<$Res> {
  factory _$EventForDateCopyWith(
          _EventForDate value, $Res Function(_EventForDate) then) =
      __$EventForDateCopyWithImpl<$Res>;
  $Res call({Map<DateTime, bool> eventMarkers});
}

/// @nodoc
class __$EventForDateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$EventForDateCopyWith<$Res> {
  __$EventForDateCopyWithImpl(
      _EventForDate _value, $Res Function(_EventForDate) _then)
      : super(_value, (v) => _then(v as _EventForDate));

  @override
  _EventForDate get _value => super._value as _EventForDate;

  @override
  $Res call({
    Object? eventMarkers = freezed,
  }) {
    return _then(_EventForDate(
      eventMarkers: eventMarkers == freezed
          ? _value.eventMarkers
          : eventMarkers // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, bool>,
    ));
  }
}

/// @nodoc

class _$_EventForDate implements _EventForDate {
  const _$_EventForDate({required this.eventMarkers});

  @override
  final Map<DateTime, bool> eventMarkers;

  @override
  String toString() {
    return 'CalendarState.eventMarkers(eventMarkers: $eventMarkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventForDate &&
            const DeepCollectionEquality()
                .equals(other.eventMarkers, eventMarkers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(eventMarkers));

  @JsonKey(ignore: true)
  @override
  _$EventForDateCopyWith<_EventForDate> get copyWith =>
      __$EventForDateCopyWithImpl<_EventForDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers) eventMarkers,
    required TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)
        loadEvents,
    required TResult Function(String error) error,
  }) {
    return eventMarkers(this.eventMarkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
    TResult Function(String error)? error,
  }) {
    return eventMarkers?.call(this.eventMarkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (eventMarkers != null) {
      return eventMarkers(this.eventMarkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventForDate value) eventMarkers,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_Error value) error,
  }) {
    return eventMarkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_Error value)? error,
  }) {
    return eventMarkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (eventMarkers != null) {
      return eventMarkers(this);
    }
    return orElse();
  }
}

abstract class _EventForDate implements CalendarState {
  const factory _EventForDate({required Map<DateTime, bool> eventMarkers}) =
      _$_EventForDate;

  Map<DateTime, bool> get eventMarkers;
  @JsonKey(ignore: true)
  _$EventForDateCopyWith<_EventForDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadEventsCopyWith<$Res> {
  factory _$LoadEventsCopyWith(
          _LoadEvents value, $Res Function(_LoadEvents) then) =
      __$LoadEventsCopyWithImpl<$Res>;
  $Res call({PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events});
}

/// @nodoc
class __$LoadEventsCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements _$LoadEventsCopyWith<$Res> {
  __$LoadEventsCopyWithImpl(
      _LoadEvents _value, $Res Function(_LoadEvents) _then)
      : super(_value, (v) => _then(v as _LoadEvents));

  @override
  _LoadEvents get _value => super._value as _LoadEvents;

  @override
  $Res call({
    Object? pageNavigation = freezed,
    Object? events = freezed,
  }) {
    return _then(_LoadEvents(
      pageNavigation: pageNavigation == freezed
          ? _value.pageNavigation
          : pageNavigation // ignore: cast_nullable_to_non_nullable
              as PAGE_NAVIGATION,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, bool>,
    ));
  }
}

/// @nodoc

class _$_LoadEvents implements _LoadEvents {
  const _$_LoadEvents(
      {this.pageNavigation = PAGE_NAVIGATION.NO_NAVIGATION,
      required this.events});

  @JsonKey(defaultValue: PAGE_NAVIGATION.NO_NAVIGATION)
  @override
  final PAGE_NAVIGATION pageNavigation;
  @override
  final Map<DateTime, bool> events;

  @override
  String toString() {
    return 'CalendarState.loadEvents(pageNavigation: $pageNavigation, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadEvents &&
            const DeepCollectionEquality()
                .equals(other.pageNavigation, pageNavigation) &&
            const DeepCollectionEquality().equals(other.events, events));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pageNavigation),
      const DeepCollectionEquality().hash(events));

  @JsonKey(ignore: true)
  @override
  _$LoadEventsCopyWith<_LoadEvents> get copyWith =>
      __$LoadEventsCopyWithImpl<_LoadEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers) eventMarkers,
    required TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)
        loadEvents,
    required TResult Function(String error) error,
  }) {
    return loadEvents(pageNavigation, events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
    TResult Function(String error)? error,
  }) {
    return loadEvents?.call(pageNavigation, events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(pageNavigation, events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventForDate value) eventMarkers,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_Error value) error,
  }) {
    return loadEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_Error value)? error,
  }) {
    return loadEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadEvents implements CalendarState {
  const factory _LoadEvents(
      {PAGE_NAVIGATION pageNavigation,
      required Map<DateTime, bool> events}) = _$_LoadEvents;

  PAGE_NAVIGATION get pageNavigation;
  Map<DateTime, bool> get events;
  @JsonKey(ignore: true)
  _$LoadEventsCopyWith<_LoadEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
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
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, bool> eventMarkers) eventMarkers,
    required TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)
        loadEvents,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, bool> eventMarkers)? eventMarkers,
    TResult Function(
            PAGE_NAVIGATION pageNavigation, Map<DateTime, bool> events)?
        loadEvents,
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
    required TResult Function(_EventForDate value) eventMarkers,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventForDate value)? eventMarkers,
    TResult Function(_LoadEvents value)? loadEvents,
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
  const factory _Error({required String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
