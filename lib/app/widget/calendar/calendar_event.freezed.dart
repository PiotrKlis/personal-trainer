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
      {required DateTime selectedDate,
      required String clientId,
      required DateTime dateTime}) {
    return GetEventMarker(
      selectedDate: selectedDate,
      clientId: clientId,
      dateTime: dateTime,
    );
  }

  ReloadEventMarkersOnPageChange reloadEventMarkersOnPageChanged() {
    return const ReloadEventMarkersOnPageChange();
  }
}

/// @nodoc
const $CalendarEvent = _$CalendarEventTearOff();

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime selectedDate, String clientId, DateTime dateTime)
        getEventMarker,
    required TResult Function() reloadEventMarkersOnPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function()? reloadEventMarkersOnPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function()? reloadEventMarkersOnPageChanged,
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
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  final CalendarEvent _value;
  // ignore: unused_field
  final $Res Function(CalendarEvent) _then;
}

/// @nodoc
abstract class $GetEventMarkerCopyWith<$Res> {
  factory $GetEventMarkerCopyWith(
          GetEventMarker value, $Res Function(GetEventMarker) then) =
      _$GetEventMarkerCopyWithImpl<$Res>;
  $Res call({DateTime selectedDate, String clientId, DateTime dateTime});
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
    Object? selectedDate = freezed,
    Object? clientId = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(GetEventMarker(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {required this.selectedDate,
      required this.clientId,
      required this.dateTime});

  @override
  final DateTime selectedDate;
  @override
  final String clientId;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'CalendarEvent.getEventMarker(selectedDate: $selectedDate, clientId: $clientId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetEventMarker &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate) &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDate),
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
            DateTime selectedDate, String clientId, DateTime dateTime)
        getEventMarker,
    required TResult Function() reloadEventMarkersOnPageChanged,
  }) {
    return getEventMarker(selectedDate, clientId, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function()? reloadEventMarkersOnPageChanged,
  }) {
    return getEventMarker?.call(selectedDate, clientId, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function()? reloadEventMarkersOnPageChanged,
    required TResult orElse(),
  }) {
    if (getEventMarker != null) {
      return getEventMarker(selectedDate, clientId, dateTime);
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
      {required DateTime selectedDate,
      required String clientId,
      required DateTime dateTime}) = _$GetEventMarker;

  DateTime get selectedDate;
  String get clientId;
  DateTime get dateTime;
  @JsonKey(ignore: true)
  $GetEventMarkerCopyWith<GetEventMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReloadEventMarkersOnPageChangeCopyWith<$Res> {
  factory $ReloadEventMarkersOnPageChangeCopyWith(
          ReloadEventMarkersOnPageChange value,
          $Res Function(ReloadEventMarkersOnPageChange) then) =
      _$ReloadEventMarkersOnPageChangeCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$ReloadEventMarkersOnPageChange
    implements ReloadEventMarkersOnPageChange {
  const _$ReloadEventMarkersOnPageChange();

  @override
  String toString() {
    return 'CalendarEvent.reloadEventMarkersOnPageChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReloadEventMarkersOnPageChange);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime selectedDate, String clientId, DateTime dateTime)
        getEventMarker,
    required TResult Function() reloadEventMarkersOnPageChanged,
  }) {
    return reloadEventMarkersOnPageChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function()? reloadEventMarkersOnPageChanged,
  }) {
    return reloadEventMarkersOnPageChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult Function()? reloadEventMarkersOnPageChanged,
    required TResult orElse(),
  }) {
    if (reloadEventMarkersOnPageChanged != null) {
      return reloadEventMarkersOnPageChanged();
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
  const factory ReloadEventMarkersOnPageChange() =
      _$ReloadEventMarkersOnPageChange;
}
