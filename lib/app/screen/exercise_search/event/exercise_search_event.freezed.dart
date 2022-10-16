// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptySearch,
    required TResult Function(String input) searchForInput,
    required TResult Function(String filterName) filterClick,
    required TResult Function() reloadLastSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptySearch,
    TResult? Function(String input)? searchForInput,
    TResult? Function(String filterName)? filterClick,
    TResult? Function()? reloadLastSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySearch value) emptySearch,
    required TResult Function(SearchForInput value) searchForInput,
    required TResult Function(FilterClick value) filterClick,
    required TResult Function(ReloadLastSearch value) reloadLastSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptySearch value)? emptySearch,
    TResult? Function(SearchForInput value)? searchForInput,
    TResult? Function(FilterClick value)? filterClick,
    TResult? Function(ReloadLastSearch value)? reloadLastSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSearchEventCopyWith<$Res> {
  factory $ExerciseSearchEventCopyWith(
          ExerciseSearchEvent value, $Res Function(ExerciseSearchEvent) then) =
      _$ExerciseSearchEventCopyWithImpl<$Res, ExerciseSearchEvent>;
}

/// @nodoc
class _$ExerciseSearchEventCopyWithImpl<$Res, $Val extends ExerciseSearchEvent>
    implements $ExerciseSearchEventCopyWith<$Res> {
  _$ExerciseSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptySearchCopyWith<$Res> {
  factory _$$EmptySearchCopyWith(
          _$EmptySearch value, $Res Function(_$EmptySearch) then) =
      __$$EmptySearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptySearchCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res, _$EmptySearch>
    implements _$$EmptySearchCopyWith<$Res> {
  __$$EmptySearchCopyWithImpl(
      _$EmptySearch _value, $Res Function(_$EmptySearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptySearch implements EmptySearch {
  const _$EmptySearch();

  @override
  String toString() {
    return 'ExerciseSearchEvent.emptySearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptySearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptySearch,
    required TResult Function(String input) searchForInput,
    required TResult Function(String filterName) filterClick,
    required TResult Function() reloadLastSearch,
  }) {
    return emptySearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptySearch,
    TResult? Function(String input)? searchForInput,
    TResult? Function(String filterName)? filterClick,
    TResult? Function()? reloadLastSearch,
  }) {
    return emptySearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (emptySearch != null) {
      return emptySearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySearch value) emptySearch,
    required TResult Function(SearchForInput value) searchForInput,
    required TResult Function(FilterClick value) filterClick,
    required TResult Function(ReloadLastSearch value) reloadLastSearch,
  }) {
    return emptySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptySearch value)? emptySearch,
    TResult? Function(SearchForInput value)? searchForInput,
    TResult? Function(FilterClick value)? filterClick,
    TResult? Function(ReloadLastSearch value)? reloadLastSearch,
  }) {
    return emptySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (emptySearch != null) {
      return emptySearch(this);
    }
    return orElse();
  }
}

abstract class EmptySearch implements ExerciseSearchEvent {
  const factory EmptySearch() = _$EmptySearch;
}

/// @nodoc
abstract class _$$SearchForInputCopyWith<$Res> {
  factory _$$SearchForInputCopyWith(
          _$SearchForInput value, $Res Function(_$SearchForInput) then) =
      __$$SearchForInputCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$SearchForInputCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res, _$SearchForInput>
    implements _$$SearchForInputCopyWith<$Res> {
  __$$SearchForInputCopyWithImpl(
      _$SearchForInput _value, $Res Function(_$SearchForInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$SearchForInput(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchForInput implements SearchForInput {
  const _$SearchForInput({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'ExerciseSearchEvent.searchForInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchForInput &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchForInputCopyWith<_$SearchForInput> get copyWith =>
      __$$SearchForInputCopyWithImpl<_$SearchForInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptySearch,
    required TResult Function(String input) searchForInput,
    required TResult Function(String filterName) filterClick,
    required TResult Function() reloadLastSearch,
  }) {
    return searchForInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptySearch,
    TResult? Function(String input)? searchForInput,
    TResult? Function(String filterName)? filterClick,
    TResult? Function()? reloadLastSearch,
  }) {
    return searchForInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (searchForInput != null) {
      return searchForInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySearch value) emptySearch,
    required TResult Function(SearchForInput value) searchForInput,
    required TResult Function(FilterClick value) filterClick,
    required TResult Function(ReloadLastSearch value) reloadLastSearch,
  }) {
    return searchForInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptySearch value)? emptySearch,
    TResult? Function(SearchForInput value)? searchForInput,
    TResult? Function(FilterClick value)? filterClick,
    TResult? Function(ReloadLastSearch value)? reloadLastSearch,
  }) {
    return searchForInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (searchForInput != null) {
      return searchForInput(this);
    }
    return orElse();
  }
}

abstract class SearchForInput implements ExerciseSearchEvent {
  const factory SearchForInput({required final String input}) =
      _$SearchForInput;

  String get input;
  @JsonKey(ignore: true)
  _$$SearchForInputCopyWith<_$SearchForInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterClickCopyWith<$Res> {
  factory _$$FilterClickCopyWith(
          _$FilterClick value, $Res Function(_$FilterClick) then) =
      __$$FilterClickCopyWithImpl<$Res>;
  @useResult
  $Res call({String filterName});
}

/// @nodoc
class __$$FilterClickCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res, _$FilterClick>
    implements _$$FilterClickCopyWith<$Res> {
  __$$FilterClickCopyWithImpl(
      _$FilterClick _value, $Res Function(_$FilterClick) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterName = null,
  }) {
    return _then(_$FilterClick(
      filterName: null == filterName
          ? _value.filterName
          : filterName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterClick implements FilterClick {
  const _$FilterClick({required this.filterName});

  @override
  final String filterName;

  @override
  String toString() {
    return 'ExerciseSearchEvent.filterClick(filterName: $filterName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterClick &&
            (identical(other.filterName, filterName) ||
                other.filterName == filterName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterClickCopyWith<_$FilterClick> get copyWith =>
      __$$FilterClickCopyWithImpl<_$FilterClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptySearch,
    required TResult Function(String input) searchForInput,
    required TResult Function(String filterName) filterClick,
    required TResult Function() reloadLastSearch,
  }) {
    return filterClick(filterName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptySearch,
    TResult? Function(String input)? searchForInput,
    TResult? Function(String filterName)? filterClick,
    TResult? Function()? reloadLastSearch,
  }) {
    return filterClick?.call(filterName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (filterClick != null) {
      return filterClick(filterName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySearch value) emptySearch,
    required TResult Function(SearchForInput value) searchForInput,
    required TResult Function(FilterClick value) filterClick,
    required TResult Function(ReloadLastSearch value) reloadLastSearch,
  }) {
    return filterClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptySearch value)? emptySearch,
    TResult? Function(SearchForInput value)? searchForInput,
    TResult? Function(FilterClick value)? filterClick,
    TResult? Function(ReloadLastSearch value)? reloadLastSearch,
  }) {
    return filterClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (filterClick != null) {
      return filterClick(this);
    }
    return orElse();
  }
}

abstract class FilterClick implements ExerciseSearchEvent {
  const factory FilterClick({required final String filterName}) = _$FilterClick;

  String get filterName;
  @JsonKey(ignore: true)
  _$$FilterClickCopyWith<_$FilterClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadLastSearchCopyWith<$Res> {
  factory _$$ReloadLastSearchCopyWith(
          _$ReloadLastSearch value, $Res Function(_$ReloadLastSearch) then) =
      __$$ReloadLastSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadLastSearchCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res, _$ReloadLastSearch>
    implements _$$ReloadLastSearchCopyWith<$Res> {
  __$$ReloadLastSearchCopyWithImpl(
      _$ReloadLastSearch _value, $Res Function(_$ReloadLastSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReloadLastSearch implements ReloadLastSearch {
  const _$ReloadLastSearch();

  @override
  String toString() {
    return 'ExerciseSearchEvent.reloadLastSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadLastSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptySearch,
    required TResult Function(String input) searchForInput,
    required TResult Function(String filterName) filterClick,
    required TResult Function() reloadLastSearch,
  }) {
    return reloadLastSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptySearch,
    TResult? Function(String input)? searchForInput,
    TResult? Function(String filterName)? filterClick,
    TResult? Function()? reloadLastSearch,
  }) {
    return reloadLastSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (reloadLastSearch != null) {
      return reloadLastSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySearch value) emptySearch,
    required TResult Function(SearchForInput value) searchForInput,
    required TResult Function(FilterClick value) filterClick,
    required TResult Function(ReloadLastSearch value) reloadLastSearch,
  }) {
    return reloadLastSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptySearch value)? emptySearch,
    TResult? Function(SearchForInput value)? searchForInput,
    TResult? Function(FilterClick value)? filterClick,
    TResult? Function(ReloadLastSearch value)? reloadLastSearch,
  }) {
    return reloadLastSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
    required TResult orElse(),
  }) {
    if (reloadLastSearch != null) {
      return reloadLastSearch(this);
    }
    return orElse();
  }
}

abstract class ReloadLastSearch implements ExerciseSearchEvent {
  const factory ReloadLastSearch() = _$ReloadLastSearch;
}
