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
      {dynamic reps,
      dynamic sets,
      dynamic id,
      dynamic title,
      dynamic videoPath,
      dynamic tags}) {
    return _Exercise(
      reps: reps,
      sets: sets,
      id: id,
      title: title,
      videoPath: videoPath,
      tags: tags,
    );
  }
}

/// @nodoc
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  dynamic get reps => throw _privateConstructorUsedError;
  dynamic get sets => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get title => throw _privateConstructorUsedError;
  dynamic get videoPath => throw _privateConstructorUsedError;
  dynamic get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {dynamic reps,
      dynamic sets,
      dynamic id,
      dynamic title,
      dynamic videoPath,
      dynamic tags});
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
  }) {
    return _then(_value.copyWith(
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      videoPath: videoPath == freezed
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic reps,
      dynamic sets,
      dynamic id,
      dynamic title,
      dynamic videoPath,
      dynamic tags});
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
  }) {
    return _then(_Exercise(
      reps: reps == freezed ? _value.reps : reps,
      sets: sets == freezed ? _value.sets : sets,
      id: id == freezed ? _value.id : id,
      title: title == freezed ? _value.title : title,
      videoPath: videoPath == freezed ? _value.videoPath : videoPath,
      tags: tags == freezed ? _value.tags : tags,
    ));
  }
}

/// @nodoc

class _$_Exercise with DiagnosticableTreeMixin implements _Exercise {
  _$_Exercise(
      {this.reps, this.sets, this.id, this.title, this.videoPath, this.tags});

  @override
  final dynamic reps;
  @override
  final dynamic sets;
  @override
  final dynamic id;
  @override
  final dynamic title;
  @override
  final dynamic videoPath;
  @override
  final dynamic tags;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise(reps: $reps, sets: $sets, id: $id, title: $title, videoPath: $videoPath, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise'))
      ..add(DiagnosticsProperty('reps', reps))
      ..add(DiagnosticsProperty('sets', sets))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('videoPath', videoPath))
      ..add(DiagnosticsProperty('tags', tags));
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
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reps),
      const DeepCollectionEquality().hash(sets),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(videoPath),
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  factory _Exercise(
      {dynamic reps,
      dynamic sets,
      dynamic id,
      dynamic title,
      dynamic videoPath,
      dynamic tags}) = _$_Exercise;

  @override
  dynamic get reps;
  @override
  dynamic get sets;
  @override
  dynamic get id;
  @override
  dynamic get title;
  @override
  dynamic get videoPath;
  @override
  dynamic get tags;
  @override
  @JsonKey(ignore: true)
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
