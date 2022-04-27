// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterData {
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get trainerEmail => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String displayName,
      String password,
      String trainerEmail,
      UserType userType});
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res> implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  final RegisterData _value;
  // ignore: unused_field
  final $Res Function(RegisterData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? displayName = freezed,
    Object? password = freezed,
    Object? trainerEmail = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      trainerEmail: trainerEmail == freezed
          ? _value.trainerEmail
          : trainerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
abstract class _$RegisterDataCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$RegisterDataCopyWith(
          _RegisterData value, $Res Function(_RegisterData) then) =
      __$RegisterDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String displayName,
      String password,
      String trainerEmail,
      UserType userType});
}

/// @nodoc
class __$RegisterDataCopyWithImpl<$Res> extends _$RegisterDataCopyWithImpl<$Res>
    implements _$RegisterDataCopyWith<$Res> {
  __$RegisterDataCopyWithImpl(
      _RegisterData _value, $Res Function(_RegisterData) _then)
      : super(_value, (v) => _then(v as _RegisterData));

  @override
  _RegisterData get _value => super._value as _RegisterData;

  @override
  $Res call({
    Object? email = freezed,
    Object? displayName = freezed,
    Object? password = freezed,
    Object? trainerEmail = freezed,
    Object? userType = freezed,
  }) {
    return _then(_RegisterData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      trainerEmail: trainerEmail == freezed
          ? _value.trainerEmail
          : trainerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc

class _$_RegisterData implements _RegisterData {
  const _$_RegisterData(
      {required this.email,
      required this.displayName,
      required this.password,
      required this.trainerEmail,
      required this.userType});

  @override
  final String email;
  @override
  final String displayName;
  @override
  final String password;
  @override
  final String trainerEmail;
  @override
  final UserType userType;

  @override
  String toString() {
    return 'RegisterData(email: $email, displayName: $displayName, password: $password, trainerEmail: $trainerEmail, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterData &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.trainerEmail, trainerEmail) &&
            const DeepCollectionEquality().equals(other.userType, userType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(trainerEmail),
      const DeepCollectionEquality().hash(userType));

  @JsonKey(ignore: true)
  @override
  _$RegisterDataCopyWith<_RegisterData> get copyWith =>
      __$RegisterDataCopyWithImpl<_RegisterData>(this, _$identity);
}

abstract class _RegisterData implements RegisterData {
  const factory _RegisterData(
      {required final String email,
      required final String displayName,
      required final String password,
      required final String trainerEmail,
      required final UserType userType}) = _$_RegisterData;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get trainerEmail => throw _privateConstructorUsedError;
  @override
  UserType get userType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterDataCopyWith<_RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}
