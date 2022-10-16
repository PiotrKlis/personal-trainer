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
  String get name => throw _privateConstructorUsedError;
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
      _$RegisterDataCopyWithImpl<$Res, RegisterData>;
  @useResult
  $Res call(
      {String email,
      String name,
      String password,
      String trainerEmail,
      UserType userType});
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res, $Val extends RegisterData>
    implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
    Object? trainerEmail = null,
    Object? userType = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      trainerEmail: null == trainerEmail
          ? _value.trainerEmail
          : trainerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterDataCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$$_RegisterDataCopyWith(
          _$_RegisterData value, $Res Function(_$_RegisterData) then) =
      __$$_RegisterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      String password,
      String trainerEmail,
      UserType userType});
}

/// @nodoc
class __$$_RegisterDataCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res, _$_RegisterData>
    implements _$$_RegisterDataCopyWith<$Res> {
  __$$_RegisterDataCopyWithImpl(
      _$_RegisterData _value, $Res Function(_$_RegisterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
    Object? trainerEmail = null,
    Object? userType = null,
  }) {
    return _then(_$_RegisterData(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      trainerEmail: null == trainerEmail
          ? _value.trainerEmail
          : trainerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
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
      required this.name,
      required this.password,
      required this.trainerEmail,
      required this.userType});

  @override
  final String email;
  @override
  final String name;
  @override
  final String password;
  @override
  final String trainerEmail;
  @override
  final UserType userType;

  @override
  String toString() {
    return 'RegisterData(email: $email, name: $name, password: $password, trainerEmail: $trainerEmail, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterData &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.trainerEmail, trainerEmail) ||
                other.trainerEmail == trainerEmail) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, name, password, trainerEmail, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterDataCopyWith<_$_RegisterData> get copyWith =>
      __$$_RegisterDataCopyWithImpl<_$_RegisterData>(this, _$identity);
}

abstract class _RegisterData implements RegisterData {
  const factory _RegisterData(
      {required final String email,
      required final String name,
      required final String password,
      required final String trainerEmail,
      required final UserType userType}) = _$_RegisterData;

  @override
  String get email;
  @override
  String get name;
  @override
  String get password;
  @override
  String get trainerEmail;
  @override
  UserType get userType;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDataCopyWith<_$_RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}
