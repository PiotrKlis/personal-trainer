// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_search_tags_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseSearchTagsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTags,
    required TResult Function(String name) applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTags,
    TResult? Function(String name)? applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTags,
    TResult Function(String name)? applyFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTags value) getTags,
    required TResult Function(ApplyFilter value) applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTags value)? getTags,
    TResult? Function(ApplyFilter value)? applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTags value)? getTags,
    TResult Function(ApplyFilter value)? applyFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSearchTagsEventCopyWith<$Res> {
  factory $ExerciseSearchTagsEventCopyWith(ExerciseSearchTagsEvent value,
          $Res Function(ExerciseSearchTagsEvent) then) =
      _$ExerciseSearchTagsEventCopyWithImpl<$Res, ExerciseSearchTagsEvent>;
}

/// @nodoc
class _$ExerciseSearchTagsEventCopyWithImpl<$Res,
        $Val extends ExerciseSearchTagsEvent>
    implements $ExerciseSearchTagsEventCopyWith<$Res> {
  _$ExerciseSearchTagsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTagsCopyWith<$Res> {
  factory _$$GetTagsCopyWith(_$GetTags value, $Res Function(_$GetTags) then) =
      __$$GetTagsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTagsCopyWithImpl<$Res>
    extends _$ExerciseSearchTagsEventCopyWithImpl<$Res, _$GetTags>
    implements _$$GetTagsCopyWith<$Res> {
  __$$GetTagsCopyWithImpl(_$GetTags _value, $Res Function(_$GetTags) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTags implements GetTags {
  const _$GetTags();

  @override
  String toString() {
    return 'ExerciseSearchTagsEvent.getTags()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTags);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTags,
    required TResult Function(String name) applyFilter,
  }) {
    return getTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTags,
    TResult? Function(String name)? applyFilter,
  }) {
    return getTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTags,
    TResult Function(String name)? applyFilter,
    required TResult orElse(),
  }) {
    if (getTags != null) {
      return getTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTags value) getTags,
    required TResult Function(ApplyFilter value) applyFilter,
  }) {
    return getTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTags value)? getTags,
    TResult? Function(ApplyFilter value)? applyFilter,
  }) {
    return getTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTags value)? getTags,
    TResult Function(ApplyFilter value)? applyFilter,
    required TResult orElse(),
  }) {
    if (getTags != null) {
      return getTags(this);
    }
    return orElse();
  }
}

abstract class GetTags implements ExerciseSearchTagsEvent {
  const factory GetTags() = _$GetTags;
}

/// @nodoc
abstract class _$$ApplyFilterCopyWith<$Res> {
  factory _$$ApplyFilterCopyWith(
          _$ApplyFilter value, $Res Function(_$ApplyFilter) then) =
      __$$ApplyFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ApplyFilterCopyWithImpl<$Res>
    extends _$ExerciseSearchTagsEventCopyWithImpl<$Res, _$ApplyFilter>
    implements _$$ApplyFilterCopyWith<$Res> {
  __$$ApplyFilterCopyWithImpl(
      _$ApplyFilter _value, $Res Function(_$ApplyFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ApplyFilter(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplyFilter implements ApplyFilter {
  const _$ApplyFilter({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ExerciseSearchTagsEvent.applyFilter(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyFilter &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyFilterCopyWith<_$ApplyFilter> get copyWith =>
      __$$ApplyFilterCopyWithImpl<_$ApplyFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTags,
    required TResult Function(String name) applyFilter,
  }) {
    return applyFilter(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTags,
    TResult? Function(String name)? applyFilter,
  }) {
    return applyFilter?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTags,
    TResult Function(String name)? applyFilter,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTags value) getTags,
    required TResult Function(ApplyFilter value) applyFilter,
  }) {
    return applyFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTags value)? getTags,
    TResult? Function(ApplyFilter value)? applyFilter,
  }) {
    return applyFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTags value)? getTags,
    TResult Function(ApplyFilter value)? applyFilter,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(this);
    }
    return orElse();
  }
}

abstract class ApplyFilter implements ExerciseSearchTagsEvent {
  const factory ApplyFilter({required final String name}) = _$ApplyFilter;

  String get name;
  @JsonKey(ignore: true)
  _$$ApplyFilterCopyWith<_$ApplyFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
