// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrainerTearOff {
  const _$TrainerTearOff();

  _Trainer call(
      {required String id,
      required String email,
      required String name,
      required List<String> clientIds,
      String phoneNumber = ""}) {
    return _Trainer(
      id: id,
      email: email,
      name: name,
      clientIds: clientIds,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
const $Trainer = _$TrainerTearOff();

/// @nodoc
mixin _$Trainer {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get clientIds => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainerCopyWith<Trainer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerCopyWith<$Res> {
  factory $TrainerCopyWith(Trainer value, $Res Function(Trainer) then) =
      _$TrainerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String name,
      List<String> clientIds,
      String phoneNumber});
}

/// @nodoc
class _$TrainerCopyWithImpl<$Res> implements $TrainerCopyWith<$Res> {
  _$TrainerCopyWithImpl(this._value, this._then);

  final Trainer _value;
  // ignore: unused_field
  final $Res Function(Trainer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? clientIds = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientIds: clientIds == freezed
          ? _value.clientIds
          : clientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrainerCopyWith<$Res> implements $TrainerCopyWith<$Res> {
  factory _$TrainerCopyWith(_Trainer value, $Res Function(_Trainer) then) =
      __$TrainerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String name,
      List<String> clientIds,
      String phoneNumber});
}

/// @nodoc
class __$TrainerCopyWithImpl<$Res> extends _$TrainerCopyWithImpl<$Res>
    implements _$TrainerCopyWith<$Res> {
  __$TrainerCopyWithImpl(_Trainer _value, $Res Function(_Trainer) _then)
      : super(_value, (v) => _then(v as _Trainer));

  @override
  _Trainer get _value => super._value as _Trainer;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? clientIds = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_Trainer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientIds: clientIds == freezed
          ? _value.clientIds
          : clientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Trainer implements _Trainer {
  const _$_Trainer(
      {required this.id,
      required this.email,
      required this.name,
      required this.clientIds,
      this.phoneNumber = ""});

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final List<String> clientIds;
  @JsonKey(defaultValue: "")
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'Trainer(id: $id, email: $email, name: $name, clientIds: $clientIds, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Trainer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.clientIds, clientIds) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(clientIds),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$TrainerCopyWith<_Trainer> get copyWith =>
      __$TrainerCopyWithImpl<_Trainer>(this, _$identity);
}

abstract class _Trainer implements Trainer {
  const factory _Trainer(
      {required String id,
      required String email,
      required String name,
      required List<String> clientIds,
      String phoneNumber}) = _$_Trainer;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  List<String> get clientIds;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$TrainerCopyWith<_Trainer> get copyWith =>
      throw _privateConstructorUsedError;
}
