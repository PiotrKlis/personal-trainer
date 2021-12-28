// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {required int reps,
      required int sets,
      required String id,
      required String title,
      required String videoPath,
      required List<String> tags,
      required String userExerciseId}) {
    return _Exercise(
      reps: reps,
      sets: sets,
      id: id,
      title: title,
      videoPath: videoPath,
      tags: tags,
      userExerciseId: userExerciseId,
    );
  }
}

/// @nodoc
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  int get reps => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get videoPath => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get userExerciseId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {int reps,
      int sets,
      String id,
      String title,
      String videoPath,
      List<String> tags,
      String userExerciseId});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object? reps = freezed,
    Object? sets = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? videoPath = freezed,
    Object? tags = freezed,
    Object? userExerciseId = freezed,
  }) {
    return _then(_value.copyWith(
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoPath: videoPath == freezed
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userExerciseId: userExerciseId == freezed
          ? _value.userExerciseId
          : userExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int reps,
      int sets,
      String id,
      String title,
      String videoPath,
      List<String> tags,
      String userExerciseId});
}

/// @nodoc
class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object? reps = freezed,
    Object? sets = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? videoPath = freezed,
    Object? tags = freezed,
    Object? userExerciseId = freezed,
  }) {
    return _then(_Exercise(
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoPath: videoPath == freezed
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userExerciseId: userExerciseId == freezed
          ? _value.userExerciseId
          : userExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Exercise implements _Exercise {
  _$_Exercise(
      {required this.reps,
      required this.sets,
      required this.id,
      required this.title,
      required this.videoPath,
      required this.tags,
      required this.userExerciseId});

  @override
  final int reps;
  @override
  final int sets;
  @override
  final String id;
  @override
  final String title;
  @override
  final String videoPath;
  @override
  final List<String> tags;
  @override
  final String userExerciseId;

  @override
  String toString() {
    return 'Exercise(reps: $reps, sets: $sets, id: $id, title: $title, videoPath: $videoPath, tags: $tags, userExerciseId: $userExerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Exercise &&
            const DeepCollectionEquality().equals(other.reps, reps) &&
            const DeepCollectionEquality().equals(other.sets, sets) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.videoPath, videoPath) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.userExerciseId, userExerciseId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reps),
      const DeepCollectionEquality().hash(sets),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(videoPath),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(userExerciseId));

  @JsonKey(ignore: true)
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  factory _Exercise(
      {required int reps,
      required int sets,
      required String id,
      required String title,
      required String videoPath,
      required List<String> tags,
      required String userExerciseId}) = _$_Exercise;

  @override
  int get reps;
  @override
  int get sets;
  @override
  String get id;
  @override
  String get title;
  @override
  String get videoPath;
  @override
  List<String> get tags;
  @override
  String get userExerciseId;
  @override
  @JsonKey(ignore: true)
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
