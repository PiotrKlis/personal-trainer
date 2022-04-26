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
    TResult Function(String trainerId)? getClients,
    TResult Function()? inviteClient,
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
    TResult Function(GetClients value)? getClients,
    TResult Function(InviteClient value)? inviteClient,
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
      _$ClientChooseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClientChooseEventCopyWithImpl<$Res>
    implements $ClientChooseEventCopyWith<$Res> {
  _$ClientChooseEventCopyWithImpl(this._value, this._then);

  final ClientChooseEvent _value;
  // ignore: unused_field
  final $Res Function(ClientChooseEvent) _then;
}

/// @nodoc
abstract class $GetClientsCopyWith<$Res> {
  factory $GetClientsCopyWith(
          GetClients value, $Res Function(GetClients) then) =
      _$GetClientsCopyWithImpl<$Res>;
  $Res call({String trainerId});
}

/// @nodoc
class _$GetClientsCopyWithImpl<$Res>
    extends _$ClientChooseEventCopyWithImpl<$Res>
    implements $GetClientsCopyWith<$Res> {
  _$GetClientsCopyWithImpl(GetClients _value, $Res Function(GetClients) _then)
      : super(_value, (v) => _then(v as GetClients));

  @override
  GetClients get _value => super._value as GetClients;

  @override
  $Res call({
    Object? trainerId = freezed,
  }) {
    return _then(GetClients(
      trainerId: trainerId == freezed
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
            other is GetClients &&
            const DeepCollectionEquality().equals(other.trainerId, trainerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(trainerId));

  @JsonKey(ignore: true)
  @override
  $GetClientsCopyWith<GetClients> get copyWith =>
      _$GetClientsCopyWithImpl<GetClients>(this, _$identity);

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
    TResult Function(String trainerId)? getClients,
    TResult Function()? inviteClient,
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
    TResult Function(GetClients value)? getClients,
    TResult Function(InviteClient value)? inviteClient,
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

  String get trainerId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetClientsCopyWith<GetClients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteClientCopyWith<$Res> {
  factory $InviteClientCopyWith(
          InviteClient value, $Res Function(InviteClient) then) =
      _$InviteClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$InviteClientCopyWithImpl<$Res>
    extends _$ClientChooseEventCopyWithImpl<$Res>
    implements $InviteClientCopyWith<$Res> {
  _$InviteClientCopyWithImpl(
      InviteClient _value, $Res Function(InviteClient) _then)
      : super(_value, (v) => _then(v as InviteClient));

  @override
  InviteClient get _value => super._value as InviteClient;
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
        (other.runtimeType == runtimeType && other is InviteClient);
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
    TResult Function(String trainerId)? getClients,
    TResult Function()? inviteClient,
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
    TResult Function(GetClients value)? getClients,
    TResult Function(InviteClient value)? inviteClient,
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
