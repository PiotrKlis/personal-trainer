// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  RegisterData get registerData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterData registerData) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterData registerData)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterData registerData)? register,
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
  $Res call({RegisterData registerData});

  $RegisterDataCopyWith<$Res> get registerData;
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
    Object? registerData = freezed,
  }) {
    return _then(_value.copyWith(
      registerData: registerData == freezed
          ? _value.registerData
          : registerData // ignore: cast_nullable_to_non_nullable
              as RegisterData,
    ));
  }

  @override
  $RegisterDataCopyWith<$Res> get registerData {
    return $RegisterDataCopyWith<$Res>(_value.registerData, (value) {
      return _then(_value.copyWith(registerData: value));
    });
  }
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
  @override
  $Res call({RegisterData registerData});

  @override
  $RegisterDataCopyWith<$Res> get registerData;
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
    Object? registerData = freezed,
  }) {
    return _then(Register(
      registerData: registerData == freezed
          ? _value.registerData
          : registerData // ignore: cast_nullable_to_non_nullable
              as RegisterData,
    ));
  }
}

/// @nodoc

class _$Register implements Register {
  const _$Register({required this.registerData});

  @override
  final RegisterData registerData;

  @override
  String toString() {
    return 'RegisterEvent.register(registerData: $registerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Register &&
            const DeepCollectionEquality()
                .equals(other.registerData, registerData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(registerData));

  @JsonKey(ignore: true)
  @override
  $RegisterCopyWith<Register> get copyWith =>
      _$RegisterCopyWithImpl<Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterData registerData) register,
  }) {
    return register(registerData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterData registerData)? register,
  }) {
    return register?.call(registerData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterData registerData)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(registerData);
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
  const factory Register({required final RegisterData registerData}) =
      _$Register;

  @override
  RegisterData get registerData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}
