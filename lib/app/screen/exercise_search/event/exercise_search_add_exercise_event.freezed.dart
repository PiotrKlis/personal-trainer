// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_search_add_exercise_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseSearchAddExerciseEvent {
  String get exerciseId => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get exerciseName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String exerciseId, DateTime selectedDate,
            String clientId, String exerciseName)
        addExercise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String exerciseId, DateTime selectedDate, String clientId,
            String exerciseName)?
        addExercise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String exerciseId, DateTime selectedDate, String clientId,
            String exerciseName)?
        addExercise,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExercise value) addExercise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExercise value)? addExercise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExercise value)? addExercise,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseSearchAddExerciseEventCopyWith<ExerciseSearchAddExerciseEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSearchAddExerciseEventCopyWith<$Res> {
  factory $ExerciseSearchAddExerciseEventCopyWith(
          ExerciseSearchAddExerciseEvent value,
          $Res Function(ExerciseSearchAddExerciseEvent) then) =
      _$ExerciseSearchAddExerciseEventCopyWithImpl<$Res,
          ExerciseSearchAddExerciseEvent>;
  @useResult
  $Res call(
      {String exerciseId,
      DateTime selectedDate,
      String clientId,
      String exerciseName});
}

/// @nodoc
class _$ExerciseSearchAddExerciseEventCopyWithImpl<$Res,
        $Val extends ExerciseSearchAddExerciseEvent>
    implements $ExerciseSearchAddExerciseEventCopyWith<$Res> {
  _$ExerciseSearchAddExerciseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseId = null,
    Object? selectedDate = null,
    Object? clientId = null,
    Object? exerciseName = null,
  }) {
    return _then(_value.copyWith(
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: null == exerciseName
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddExerciseCopyWith<$Res>
    implements $ExerciseSearchAddExerciseEventCopyWith<$Res> {
  factory _$$AddExerciseCopyWith(
          _$AddExercise value, $Res Function(_$AddExercise) then) =
      __$$AddExerciseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String exerciseId,
      DateTime selectedDate,
      String clientId,
      String exerciseName});
}

/// @nodoc
class __$$AddExerciseCopyWithImpl<$Res>
    extends _$ExerciseSearchAddExerciseEventCopyWithImpl<$Res, _$AddExercise>
    implements _$$AddExerciseCopyWith<$Res> {
  __$$AddExerciseCopyWithImpl(
      _$AddExercise _value, $Res Function(_$AddExercise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseId = null,
    Object? selectedDate = null,
    Object? clientId = null,
    Object? exerciseName = null,
  }) {
    return _then(_$AddExercise(
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: null == exerciseName
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddExercise implements AddExercise {
  const _$AddExercise(
      {required this.exerciseId,
      required this.selectedDate,
      required this.clientId,
      required this.exerciseName});

  @override
  final String exerciseId;
  @override
  final DateTime selectedDate;
  @override
  final String clientId;
  @override
  final String exerciseName;

  @override
  String toString() {
    return 'ExerciseSearchAddExerciseEvent.addExercise(exerciseId: $exerciseId, selectedDate: $selectedDate, clientId: $clientId, exerciseName: $exerciseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExercise &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.exerciseName, exerciseName) ||
                other.exerciseName == exerciseName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, exerciseId, selectedDate, clientId, exerciseName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExerciseCopyWith<_$AddExercise> get copyWith =>
      __$$AddExerciseCopyWithImpl<_$AddExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String exerciseId, DateTime selectedDate,
            String clientId, String exerciseName)
        addExercise,
  }) {
    return addExercise(exerciseId, selectedDate, clientId, exerciseName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String exerciseId, DateTime selectedDate, String clientId,
            String exerciseName)?
        addExercise,
  }) {
    return addExercise?.call(exerciseId, selectedDate, clientId, exerciseName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String exerciseId, DateTime selectedDate, String clientId,
            String exerciseName)?
        addExercise,
    required TResult orElse(),
  }) {
    if (addExercise != null) {
      return addExercise(exerciseId, selectedDate, clientId, exerciseName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExercise value) addExercise,
  }) {
    return addExercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExercise value)? addExercise,
  }) {
    return addExercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExercise value)? addExercise,
    required TResult orElse(),
  }) {
    if (addExercise != null) {
      return addExercise(this);
    }
    return orElse();
  }
}

abstract class AddExercise implements ExerciseSearchAddExerciseEvent {
  const factory AddExercise(
      {required final String exerciseId,
      required final DateTime selectedDate,
      required final String clientId,
      required final String exerciseName}) = _$AddExercise;

  @override
  String get exerciseId;
  @override
  DateTime get selectedDate;
  @override
  String get clientId;
  @override
  String get exerciseName;
  @override
  @JsonKey(ignore: true)
  _$$AddExerciseCopyWith<_$AddExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
