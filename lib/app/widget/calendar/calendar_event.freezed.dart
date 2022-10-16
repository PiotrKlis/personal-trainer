// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(
            DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult? Function()? reloadEventMarkersOnPageChanged,
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
    TResult? Function(GetEventMarker value)? getEventMarker,
    TResult? Function(ReloadEventMarkersOnPageChange value)?
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
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEventMarkerCopyWith<$Res> {
  factory _$$GetEventMarkerCopyWith(
          _$GetEventMarker value, $Res Function(_$GetEventMarker) then) =
      __$$GetEventMarkerCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate, String clientId, DateTime dateTime});
}

/// @nodoc
class __$$GetEventMarkerCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$GetEventMarker>
    implements _$$GetEventMarkerCopyWith<$Res> {
  __$$GetEventMarkerCopyWithImpl(
      _$GetEventMarker _value, $Res Function(_$GetEventMarker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? clientId = null,
    Object? dateTime = null,
  }) {
    return _then(_$GetEventMarker(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
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
            other is _$GetEventMarker &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedDate, clientId, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventMarkerCopyWith<_$GetEventMarker> get copyWith =>
      __$$GetEventMarkerCopyWithImpl<_$GetEventMarker>(this, _$identity);

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
    TResult? Function(
            DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult? Function()? reloadEventMarkersOnPageChanged,
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
    TResult? Function(GetEventMarker value)? getEventMarker,
    TResult? Function(ReloadEventMarkersOnPageChange value)?
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
      {required final DateTime selectedDate,
      required final String clientId,
      required final DateTime dateTime}) = _$GetEventMarker;

  DateTime get selectedDate;
  String get clientId;
  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$GetEventMarkerCopyWith<_$GetEventMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadEventMarkersOnPageChangeCopyWith<$Res> {
  factory _$$ReloadEventMarkersOnPageChangeCopyWith(
          _$ReloadEventMarkersOnPageChange value,
          $Res Function(_$ReloadEventMarkersOnPageChange) then) =
      __$$ReloadEventMarkersOnPageChangeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadEventMarkersOnPageChangeCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$ReloadEventMarkersOnPageChange>
    implements _$$ReloadEventMarkersOnPageChangeCopyWith<$Res> {
  __$$ReloadEventMarkersOnPageChangeCopyWithImpl(
      _$ReloadEventMarkersOnPageChange _value,
      $Res Function(_$ReloadEventMarkersOnPageChange) _then)
      : super(_value, _then);
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
            other is _$ReloadEventMarkersOnPageChange);
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
    TResult? Function(
            DateTime selectedDate, String clientId, DateTime dateTime)?
        getEventMarker,
    TResult? Function()? reloadEventMarkersOnPageChanged,
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
    TResult? Function(GetEventMarker value)? getEventMarker,
    TResult? Function(ReloadEventMarkersOnPageChange value)?
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
