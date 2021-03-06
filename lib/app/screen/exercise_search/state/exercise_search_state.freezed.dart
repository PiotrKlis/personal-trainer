// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(List<Exercise> exercises) content,
    required TResult Function(String error) error,
    required TResult Function() filterReload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_FilterReload value) filterReload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSearchStateCopyWith<$Res> {
  factory $ExerciseSearchStateCopyWith(
          ExerciseSearchState value, $Res Function(ExerciseSearchState) then) =
      _$ExerciseSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExerciseSearchStateCopyWithImpl<$Res>
    implements $ExerciseSearchStateCopyWith<$Res> {
  _$ExerciseSearchStateCopyWithImpl(this._value, this._then);

  final ExerciseSearchState _value;
  // ignore: unused_field
  final $Res Function(ExerciseSearchState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ExerciseSearchStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ExerciseSearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(List<Exercise> exercises) content,
    required TResult Function(String error) error,
    required TResult Function() filterReload,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_FilterReload value) filterReload,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ExerciseSearchState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ExerciseSearchStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExerciseSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(List<Exercise> exercises) content,
    required TResult Function(String error) error,
    required TResult Function() filterReload,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_FilterReload value) filterReload,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExerciseSearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

/// @nodoc
class __$ContentCopyWithImpl<$Res>
    extends _$ExerciseSearchStateCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? exercises = freezed,
  }) {
    return _then(_Content(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc

class _$_Content implements _Content {
  const _$_Content({required final List<Exercise> exercises})
      : _exercises = exercises;

  final List<Exercise> _exercises;
  @override
  List<Exercise> get exercises {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'ExerciseSearchState.content(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            const DeepCollectionEquality().equals(other.exercises, exercises));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exercises));

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(List<Exercise> exercises) content,
    required TResult Function(String error) error,
    required TResult Function() filterReload,
  }) {
    return content(exercises);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
  }) {
    return content?.call(exercises);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_FilterReload value) filterReload,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements ExerciseSearchState {
  const factory _Content({required final List<Exercise> exercises}) =
      _$_Content;

  List<Exercise> get exercises => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ExerciseSearchStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ExerciseSearchState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(List<Exercise> exercises) content,
    required TResult Function(String error) error,
    required TResult Function() filterReload,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_FilterReload value) filterReload,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ExerciseSearchState {
  const factory _Error({required final String error}) = _$_Error;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterReloadCopyWith<$Res> {
  factory _$FilterReloadCopyWith(
          _FilterReload value, $Res Function(_FilterReload) then) =
      __$FilterReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilterReloadCopyWithImpl<$Res>
    extends _$ExerciseSearchStateCopyWithImpl<$Res>
    implements _$FilterReloadCopyWith<$Res> {
  __$FilterReloadCopyWithImpl(
      _FilterReload _value, $Res Function(_FilterReload) _then)
      : super(_value, (v) => _then(v as _FilterReload));

  @override
  _FilterReload get _value => super._value as _FilterReload;
}

/// @nodoc

class _$_FilterReload implements _FilterReload {
  const _$_FilterReload();

  @override
  String toString() {
    return 'ExerciseSearchState.filterReload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FilterReload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(List<Exercise> exercises) content,
    required TResult Function(String error) error,
    required TResult Function() filterReload,
  }) {
    return filterReload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
  }) {
    return filterReload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(List<Exercise> exercises)? content,
    TResult Function(String error)? error,
    TResult Function()? filterReload,
    required TResult orElse(),
  }) {
    if (filterReload != null) {
      return filterReload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_FilterReload value) filterReload,
  }) {
    return filterReload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
  }) {
    return filterReload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_FilterReload value)? filterReload,
    required TResult orElse(),
  }) {
    if (filterReload != null) {
      return filterReload(this);
    }
    return orElse();
  }
}

abstract class _FilterReload implements ExerciseSearchState {
  const factory _FilterReload() = _$_FilterReload;
}
