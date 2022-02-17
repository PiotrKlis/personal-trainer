// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  Register register(
      {required String userEmail,
      required String name,
      required String password,
      required String trainerEmail,
      required UserType userType}) {
    return Register(
      userEmail: userEmail,
      name: name,
      password: password,
      trainerEmail: trainerEmail,
      userType: userType,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  String get userEmail => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get trainerEmail => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userEmail, String name, String password,
            String trainerEmail, UserType userType)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userEmail, String name, String password,
            String trainerEmail, UserType userType)?
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userEmail, String name, String password,
            String trainerEmail, UserType userType)?
        register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
  $Res call(
      {String userEmail,
      String name,
      String password,
      String trainerEmail,
      UserType userType});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;

  @override
  $Res call({
    Object? userEmail = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? trainerEmail = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class $RegisterCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userEmail,
      String name,
      String password,
      String trainerEmail,
      UserType userType});
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(Register _value, $Res Function(Register) _then)
      : super(_value, (v) => _then(v as Register));

  @override
  Register get _value => super._value as Register;

  @override
  $Res call({
    Object? userEmail = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? trainerEmail = freezed,
    Object? userType = freezed,
  }) {
    return _then(Register(
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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

class _$Register implements Register {
  const _$Register(
      {required this.userEmail,
      required this.name,
      required this.password,
      required this.trainerEmail,
      required this.userType});

  @override
  final String userEmail;
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
    return 'RegisterEvent.register(userEmail: $userEmail, name: $name, password: $password, trainerEmail: $trainerEmail, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Register &&
            const DeepCollectionEquality().equals(other.userEmail, userEmail) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.trainerEmail, trainerEmail) &&
            const DeepCollectionEquality().equals(other.userType, userType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userEmail),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(trainerEmail),
      const DeepCollectionEquality().hash(userType));

  @JsonKey(ignore: true)
  @override
  $RegisterCopyWith<Register> get copyWith =>
      _$RegisterCopyWithImpl<Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userEmail, String name, String password,
            String trainerEmail, UserType userType)
        register,
  }) {
    return register(userEmail, name, password, trainerEmail, userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userEmail, String name, String password,
            String trainerEmail, UserType userType)?
        register,
  }) {
    return register?.call(userEmail, name, password, trainerEmail, userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userEmail, String name, String password,
            String trainerEmail, UserType userType)?
        register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(userEmail, name, password, trainerEmail, userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements RegisterEvent {
  const factory Register(
      {required String userEmail,
      required String name,
      required String password,
      required String trainerEmail,
      required UserType userType}) = _$Register;

  @override
  String get userEmail;
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
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}
