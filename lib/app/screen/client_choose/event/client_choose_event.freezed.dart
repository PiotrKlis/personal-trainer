// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_choose_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientChooseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trainerId) getClients,
    required TResult Function() inviteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trainerId)? getClients,
    TResult? Function()? inviteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trainerId)? getClients,
    TResult Function()? inviteClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetClients value) getClients,
    required TResult Function(InviteClient value) inviteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetClients value)? getClients,
    TResult? Function(InviteClient value)? inviteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetClients value)? getClients,
    TResult Function(InviteClient value)? inviteClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientChooseEventCopyWith<$Res> {
  factory $ClientChooseEventCopyWith(
          ClientChooseEvent value, $Res Function(ClientChooseEvent) then) =
      _$ClientChooseEventCopyWithImpl<$Res, ClientChooseEvent>;
}

/// @nodoc
class _$ClientChooseEventCopyWithImpl<$Res, $Val extends ClientChooseEvent>
    implements $ClientChooseEventCopyWith<$Res> {
  _$ClientChooseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetClientsCopyWith<$Res> {
  factory _$$GetClientsCopyWith(
          _$GetClients value, $Res Function(_$GetClients) then) =
      __$$GetClientsCopyWithImpl<$Res>;
  @useResult
  $Res call({String trainerId});
}

/// @nodoc
class __$$GetClientsCopyWithImpl<$Res>
    extends _$ClientChooseEventCopyWithImpl<$Res, _$GetClients>
    implements _$$GetClientsCopyWith<$Res> {
  __$$GetClientsCopyWithImpl(
      _$GetClients _value, $Res Function(_$GetClients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainerId = null,
  }) {
    return _then(_$GetClients(
      trainerId: null == trainerId
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetClients implements GetClients {
  const _$GetClients({required this.trainerId});

  @override
  final String trainerId;

  @override
  String toString() {
    return 'ClientChooseEvent.getClients(trainerId: $trainerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClients &&
            (identical(other.trainerId, trainerId) ||
                other.trainerId == trainerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientsCopyWith<_$GetClients> get copyWith =>
      __$$GetClientsCopyWithImpl<_$GetClients>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trainerId) getClients,
    required TResult Function() inviteClient,
  }) {
    return getClients(trainerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trainerId)? getClients,
    TResult? Function()? inviteClient,
  }) {
    return getClients?.call(trainerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trainerId)? getClients,
    TResult Function()? inviteClient,
    required TResult orElse(),
  }) {
    if (getClients != null) {
      return getClients(trainerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetClients value) getClients,
    required TResult Function(InviteClient value) inviteClient,
  }) {
    return getClients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetClients value)? getClients,
    TResult? Function(InviteClient value)? inviteClient,
  }) {
    return getClients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetClients value)? getClients,
    TResult Function(InviteClient value)? inviteClient,
    required TResult orElse(),
  }) {
    if (getClients != null) {
      return getClients(this);
    }
    return orElse();
  }
}

abstract class GetClients implements ClientChooseEvent {
  const factory GetClients({required final String trainerId}) = _$GetClients;

  String get trainerId;
  @JsonKey(ignore: true)
  _$$GetClientsCopyWith<_$GetClients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteClientCopyWith<$Res> {
  factory _$$InviteClientCopyWith(
          _$InviteClient value, $Res Function(_$InviteClient) then) =
      __$$InviteClientCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InviteClientCopyWithImpl<$Res>
    extends _$ClientChooseEventCopyWithImpl<$Res, _$InviteClient>
    implements _$$InviteClientCopyWith<$Res> {
  __$$InviteClientCopyWithImpl(
      _$InviteClient _value, $Res Function(_$InviteClient) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InviteClient implements InviteClient {
  const _$InviteClient();

  @override
  String toString() {
    return 'ClientChooseEvent.inviteClient()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InviteClient);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trainerId) getClients,
    required TResult Function() inviteClient,
  }) {
    return inviteClient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trainerId)? getClients,
    TResult? Function()? inviteClient,
  }) {
    return inviteClient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trainerId)? getClients,
    TResult Function()? inviteClient,
    required TResult orElse(),
  }) {
    if (inviteClient != null) {
      return inviteClient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetClients value) getClients,
    required TResult Function(InviteClient value) inviteClient,
  }) {
    return inviteClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetClients value)? getClients,
    TResult? Function(InviteClient value)? inviteClient,
  }) {
    return inviteClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetClients value)? getClients,
    TResult Function(InviteClient value)? inviteClient,
    required TResult orElse(),
  }) {
    if (inviteClient != null) {
      return inviteClient(this);
    }
    return orElse();
  }
}

abstract class InviteClient implements ClientChooseEvent {
  const factory InviteClient() = _$InviteClient;
}
