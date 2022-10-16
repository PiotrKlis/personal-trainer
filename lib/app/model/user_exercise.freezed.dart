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
      _$UserExerciseCopyWithImpl<$Res, UserExercise>;
  @useResult
  $Res call({String id, int index, int reps, int sets, Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$UserExerciseCopyWithImpl<$Res, $Val extends UserExercise>
    implements $UserExerciseCopyWith<$Res> {
  _$UserExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? reps = null,
    Object? sets = null,
    Object? exercise = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<$Res> get exercise {
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserExerciseCopyWith<$Res>
    implements $UserExerciseCopyWith<$Res> {
  factory _$$_UserExerciseCopyWith(
          _$_UserExercise value, $Res Function(_$_UserExercise) then) =
      __$$_UserExerciseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int index, int reps, int sets, Exercise exercise});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$_UserExerciseCopyWithImpl<$Res>
    extends _$UserExerciseCopyWithImpl<$Res, _$_UserExercise>
    implements _$$_UserExerciseCopyWith<$Res> {
  __$$_UserExerciseCopyWithImpl(
      _$_UserExercise _value, $Res Function(_$_UserExercise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? reps = null,
    Object? sets = null,
    Object? exercise = null,
  }) {
    return _then(_$_UserExercise(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: null == exercise
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
            other is _$_UserExercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, index, reps, sets, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserExerciseCopyWith<_$_UserExercise> get copyWith =>
      __$$_UserExerciseCopyWithImpl<_$_UserExercise>(this, _$identity);
}

abstract class _UserExercise implements UserExercise {
  const factory _UserExercise(
      {required final String id,
      required final int index,
      required final int reps,
      required final int sets,
      required final Exercise exercise}) = _$_UserExercise;

  @override
  String get id;
  @override
  int get index;
  @override
  int get reps;
  @override
  int get sets;
  @override
  Exercise get exercise;
  @override
  @JsonKey(ignore: true)
  _$$_UserExerciseCopyWith<_$_UserExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
