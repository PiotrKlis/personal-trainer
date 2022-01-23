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

  GetEventMarker getEventMarker(
      {PAGE_NAVIGATION pageNavigation = PAGE_NAVIGATION.NO_NAVIGATION,
      required String clientId,
      required DateTime dateTime}) {
    return GetEventMarker(
      pageNavigation: pageNavigation,
      clientId: clientId,
      dateTime: dateTime,
    );
  }

  ReloadEventMarkersOnPageChange reloadEventMarkersOnPageChanged(
      {required PAGE_NAVIGATION pageNavigation}) {
    return ReloadEventMarkersOnPageChange(
      pageNavigation: pageNavigation,
    );
  }
}

/// @nodoc
const $CalendarEvent = _$CalendarEventTearOff();

/// @nodoc
mixin _$CalendarEvent {
  PAGE_NAVIGATION get pageNavigation => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)
        getEventMarker,
    required TResult Function(PAGE_NAVIGATION pageNavigation)
        reloadEventMarkersOnPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function(PAGE_NAVIGATION pageNavigation)?
        reloadEventMarkersOnPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function(PAGE_NAVIGATION pageNavigation)?
        reloadEventMarkersOnPageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEventMarker value) getEventMarker,
    required TResult Function(ReloadEventMarkersOnPageChange value)
        reloadEventMarkersOnPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetEventMarker value)? getEventMarker,
    TResult Function(ReloadEventMarkersOnPageChange value)?
        reloadEventMarkersOnPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEventMarker value)? getEventMarker,
    TResult Function(ReloadEventMarkersOnPageChange value)?
        reloadEventMarkersOnPageChanged,
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
  $Res call({PAGE_NAVIGATION pageNavigation});
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
    Object? pageNavigation = freezed,
  }) {
    return _then(_value.copyWith(
      pageNavigation: pageNavigation == freezed
          ? _value.pageNavigation
          : pageNavigation // ignore: cast_nullable_to_non_nullable
              as PAGE_NAVIGATION,
    ));
  }
}

/// @nodoc
abstract class $GetEventMarkerCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $GetEventMarkerCopyWith(
          GetEventMarker value, $Res Function(GetEventMarker) then) =
      _$GetEventMarkerCopyWithImpl<$Res>;
  @override
  $Res call(
      {PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime});
}

/// @nodoc
class _$GetEventMarkerCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $GetEventMarkerCopyWith<$Res> {
  _$GetEventMarkerCopyWithImpl(
      GetEventMarker _value, $Res Function(GetEventMarker) _then)
      : super(_value, (v) => _then(v as GetEventMarker));

  @override
  GetEventMarker get _value => super._value as GetEventMarker;

  @override
  $Res call({
    Object? pageNavigation = freezed,
    Object? clientId = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(GetEventMarker(
      pageNavigation: pageNavigation == freezed
          ? _value.pageNavigation
          : pageNavigation // ignore: cast_nullable_to_non_nullable
              as PAGE_NAVIGATION,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetEventMarker implements GetEventMarker {
  const _$GetEventMarker(
      {this.pageNavigation = PAGE_NAVIGATION.NO_NAVIGATION,
      required this.clientId,
      required this.dateTime});

  @JsonKey(defaultValue: PAGE_NAVIGATION.NO_NAVIGATION)
  @override
  final PAGE_NAVIGATION pageNavigation;
  @override
  final String clientId;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'CalendarEvent.getEventMarker(pageNavigation: $pageNavigation, clientId: $clientId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetEventMarker &&
            const DeepCollectionEquality()
                .equals(other.pageNavigation, pageNavigation) &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pageNavigation),
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  $GetEventMarkerCopyWith<GetEventMarker> get copyWith =>
      _$GetEventMarkerCopyWithImpl<GetEventMarker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)
        getEventMarker,
    required TResult Function(PAGE_NAVIGATION pageNavigation)
        reloadEventMarkersOnPageChanged,
  }) {
    return getEventMarker(pageNavigation, clientId, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function(PAGE_NAVIGATION pageNavigation)?
        reloadEventMarkersOnPageChanged,
  }) {
    return getEventMarker?.call(pageNavigation, clientId, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function(PAGE_NAVIGATION pageNavigation)?
        reloadEventMarkersOnPageChanged,
    required TResult orElse(),
  }) {
    if (getEventMarker != null) {
      return getEventMarker(pageNavigation, clientId, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEventMarker value) getEventMarker,
    required TResult Function(ReloadEventMarkersOnPageChange value)
        reloadEventMarkersOnPageChanged,
  }) {
    return getEventMarker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetEventMarker value)? getEventMarker,
    TResult Function(ReloadEventMarkersOnPageChange value)?
        reloadEventMarkersOnPageChanged,
  }) {
    return getEventMarker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEventMarker value)? getEventMarker,
    TResult Function(ReloadEventMarkersOnPageChange value)?
        reloadEventMarkersOnPageChanged,
    required TResult orElse(),
  }) {
    if (getEventMarker != null) {
      return getEventMarker(this);
    }
    return orElse();
  }
}

abstract class GetEventMarker implements CalendarEvent {
  const factory GetEventMarker(
      {PAGE_NAVIGATION pageNavigation,
      required String clientId,
      required DateTime dateTime}) = _$GetEventMarker;

  @override
  PAGE_NAVIGATION get pageNavigation;
  String get clientId;
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  $GetEventMarkerCopyWith<GetEventMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReloadEventMarkersOnPageChangeCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $ReloadEventMarkersOnPageChangeCopyWith(
          ReloadEventMarkersOnPageChange value,
          $Res Function(ReloadEventMarkersOnPageChange) then) =
      _$ReloadEventMarkersOnPageChangeCopyWithImpl<$Res>;
  @override
  $Res call({PAGE_NAVIGATION pageNavigation});
}

/// @nodoc
class _$ReloadEventMarkersOnPageChangeCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $ReloadEventMarkersOnPageChangeCopyWith<$Res> {
  _$ReloadEventMarkersOnPageChangeCopyWithImpl(
      ReloadEventMarkersOnPageChange _value,
      $Res Function(ReloadEventMarkersOnPageChange) _then)
      : super(_value, (v) => _then(v as ReloadEventMarkersOnPageChange));

  @override
  ReloadEventMarkersOnPageChange get _value =>
      super._value as ReloadEventMarkersOnPageChange;

  @override
  $Res call({
    Object? pageNavigation = freezed,
  }) {
    return _then(ReloadEventMarkersOnPageChange(
      pageNavigation: pageNavigation == freezed
          ? _value.pageNavigation
          : pageNavigation // ignore: cast_nullable_to_non_nullable
              as PAGE_NAVIGATION,
    ));
  }
}

/// @nodoc

class _$ReloadEventMarkersOnPageChange
    implements ReloadEventMarkersOnPageChange {
  const _$ReloadEventMarkersOnPageChange({required this.pageNavigation});

  @override
  final PAGE_NAVIGATION pageNavigation;

  @override
  String toString() {
    return 'CalendarEvent.reloadEventMarkersOnPageChanged(pageNavigation: $pageNavigation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReloadEventMarkersOnPageChange &&
            const DeepCollectionEquality()
                .equals(other.pageNavigation, pageNavigation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pageNavigation));

  @JsonKey(ignore: true)
  @override
  $ReloadEventMarkersOnPageChangeCopyWith<ReloadEventMarkersOnPageChange>
      get copyWith => _$ReloadEventMarkersOnPageChangeCopyWithImpl<
          ReloadEventMarkersOnPageChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)
        getEventMarker,
    required TResult Function(PAGE_NAVIGATION pageNavigation)
        reloadEventMarkersOnPageChanged,
  }) {
    return reloadEventMarkersOnPageChanged(pageNavigation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function(PAGE_NAVIGATION pageNavigation)?
        reloadEventMarkersOnPageChanged,
  }) {
    return reloadEventMarkersOnPageChanged?.call(pageNavigation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PAGE_NAVIGATION pageNavigation, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function(PAGE_NAVIGATION pageNavigation)?
        reloadEventMarkersOnPageChanged,
    required TResult orElse(),
  }) {
    if (reloadEventMarkersOnPageChanged != null) {
      return reloadEventMarkersOnPageChanged(pageNavigation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEventMarker value) getEventMarker,
    required TResult Function(ReloadEventMarkersOnPageChange value)
        reloadEventMarkersOnPageChanged,
  }) {
    return reloadEventMarkersOnPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetEventMarker value)? getEventMarker,
    TResult Function(ReloadEventMarkersOnPageChange value)?
        reloadEventMarkersOnPageChanged,
  }) {
    return reloadEventMarkersOnPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEventMarker value)? getEventMarker,
    TResult Function(ReloadEventMarkersOnPageChange value)?
        reloadEventMarkersOnPageChanged,
    required TResult orElse(),
  }) {
    if (reloadEventMarkersOnPageChanged != null) {
      return reloadEventMarkersOnPageChanged(this);
    }
    return orElse();
  }
}

abstract class ReloadEventMarkersOnPageChange implements CalendarEvent {
  const factory ReloadEventMarkersOnPageChange(
          {required PAGE_NAVIGATION pageNavigation}) =
      _$ReloadEventMarkersOnPageChange;

  @override
  PAGE_NAVIGATION get pageNavigation;
  @override
  @JsonKey(ignore: true)
  $ReloadEventMarkersOnPageChangeCopyWith<ReloadEventMarkersOnPageChange>
      get copyWith => throw _privateConstructorUsedError;
}
