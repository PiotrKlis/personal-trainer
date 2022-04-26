// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserExercise {
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  Exercise get exercise => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserExerciseCopyWith<UserExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExerciseCopyWith<$Res> {
  factory $UserExerciseCopyWith(
          UserExercise value, $Res Function(UserExercise) then) =
      _$UserExerciseCopyWithImpl<$Res>;
  $Res call({String id, int index, int reps, int sets, Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$UserExerciseCopyWithImpl<$Res> implements $UserExerciseCopyWith<$Res> {
  _$UserExerciseCopyWithImpl(this._value, this._then);

  final UserExercise _value;
  // ignore: unused_field
  final $Res Function(UserExercise) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? reps = freezed,
    Object? sets = freezed,
    Object? exercise = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc
abstract class _$UserExerciseCopyWith<$Res>
    implements $UserExerciseCopyWith<$Res> {
  factory _$UserExerciseCopyWith(
          _UserExercise value, $Res Function(_UserExercise) then) =
      __$UserExerciseCopyWithImpl<$Res>;
  @override
  $Res call({String id, int index, int reps, int sets, Exercise exercise});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$UserExerciseCopyWithImpl<$Res> extends _$UserExerciseCopyWithImpl<$Res>
    implements _$UserExerciseCopyWith<$Res> {
  __$UserExerciseCopyWithImpl(
      _UserExercise _value, $Res Function(_UserExercise) _then)
      : super(_value, (v) => _then(v as _UserExercise));

  @override
  _UserExercise get _value => super._value as _UserExercise;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? reps = freezed,
    Object? sets = freezed,
    Object? exercise = freezed,
  }) {
    return _then(_UserExercise(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ));
  }
}

/// @nodoc

class _$_UserExercise implements _UserExercise {
  const _$_UserExercise(
      {required this.id,
      required this.index,
      required this.reps,
      required this.sets,
      required this.exercise});

  @override
  final String id;
  @override
  final int index;
  @override
  final int reps;
  @override
  final int sets;
  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'UserExercise(id: $id, index: $index, reps: $reps, sets: $sets, exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserExercise &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.reps, reps) &&
            const DeepCollectionEquality().equals(other.sets, sets) &&
            const DeepCollectionEquality().equals(other.exercise, exercise));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(reps),
      const DeepCollectionEquality().hash(sets),
      const DeepCollectionEquality().hash(exercise));

  @JsonKey(ignore: true)
  @override
  _$UserExerciseCopyWith<_UserExercise> get copyWith =>
      __$UserExerciseCopyWithImpl<_UserExercise>(this, _$identity);
}

abstract class _UserExercise implements UserExercise {
  const factory _UserExercise(
      {required final String id,
      required final int index,
      required final int reps,
      required final int sets,
      required final Exercise exercise}) = _$_UserExercise;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  int get reps => throw _privateConstructorUsedError;
  @override
  int get sets => throw _privateConstructorUsedError;
  @override
  Exercise get exercise => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserExerciseCopyWith<_UserExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
