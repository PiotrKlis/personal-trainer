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
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
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
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
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
      _$ExerciseSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExerciseSearchEventCopyWithImpl<$Res>
    implements $ExerciseSearchEventCopyWith<$Res> {
  _$ExerciseSearchEventCopyWithImpl(this._value, this._then);

  final ExerciseSearchEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseSearchEvent) _then;
}

/// @nodoc
abstract class $EmptySearchCopyWith<$Res> {
  factory $EmptySearchCopyWith(
          EmptySearch value, $Res Function(EmptySearch) then) =
      _$EmptySearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptySearchCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res>
    implements $EmptySearchCopyWith<$Res> {
  _$EmptySearchCopyWithImpl(
      EmptySearch _value, $Res Function(EmptySearch) _then)
      : super(_value, (v) => _then(v as EmptySearch));

  @override
  EmptySearch get _value => super._value as EmptySearch;
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
        (other.runtimeType == runtimeType && other is EmptySearch);
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
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
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
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
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
abstract class $SearchForInputCopyWith<$Res> {
  factory $SearchForInputCopyWith(
          SearchForInput value, $Res Function(SearchForInput) then) =
      _$SearchForInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$SearchForInputCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res>
    implements $SearchForInputCopyWith<$Res> {
  _$SearchForInputCopyWithImpl(
      SearchForInput _value, $Res Function(SearchForInput) _then)
      : super(_value, (v) => _then(v as SearchForInput));

  @override
  SearchForInput get _value => super._value as SearchForInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(SearchForInput(
      input: input == freezed
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
            other is SearchForInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $SearchForInputCopyWith<SearchForInput> get copyWith =>
      _$SearchForInputCopyWithImpl<SearchForInput>(this, _$identity);

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
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
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
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
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

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchForInputCopyWith<SearchForInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterClickCopyWith<$Res> {
  factory $FilterClickCopyWith(
          FilterClick value, $Res Function(FilterClick) then) =
      _$FilterClickCopyWithImpl<$Res>;
  $Res call({String filterName});
}

/// @nodoc
class _$FilterClickCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res>
    implements $FilterClickCopyWith<$Res> {
  _$FilterClickCopyWithImpl(
      FilterClick _value, $Res Function(FilterClick) _then)
      : super(_value, (v) => _then(v as FilterClick));

  @override
  FilterClick get _value => super._value as FilterClick;

  @override
  $Res call({
    Object? filterName = freezed,
  }) {
    return _then(FilterClick(
      filterName: filterName == freezed
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
            other is FilterClick &&
            const DeepCollectionEquality()
                .equals(other.filterName, filterName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filterName));

  @JsonKey(ignore: true)
  @override
  $FilterClickCopyWith<FilterClick> get copyWith =>
      _$FilterClickCopyWithImpl<FilterClick>(this, _$identity);

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
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
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
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
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

  String get filterName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterClickCopyWith<FilterClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReloadLastSearchCopyWith<$Res> {
  factory $ReloadLastSearchCopyWith(
          ReloadLastSearch value, $Res Function(ReloadLastSearch) then) =
      _$ReloadLastSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReloadLastSearchCopyWithImpl<$Res>
    extends _$ExerciseSearchEventCopyWithImpl<$Res>
    implements $ReloadLastSearchCopyWith<$Res> {
  _$ReloadLastSearchCopyWithImpl(
      ReloadLastSearch _value, $Res Function(ReloadLastSearch) _then)
      : super(_value, (v) => _then(v as ReloadLastSearch));

  @override
  ReloadLastSearch get _value => super._value as ReloadLastSearch;
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
        (other.runtimeType == runtimeType && other is ReloadLastSearch);
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
    TResult Function()? emptySearch,
    TResult Function(String input)? searchForInput,
    TResult Function(String filterName)? filterClick,
    TResult Function()? reloadLastSearch,
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
    TResult Function(EmptySearch value)? emptySearch,
    TResult Function(SearchForInput value)? searchForInput,
    TResult Function(FilterClick value)? filterClick,
    TResult Function(ReloadLastSearch value)? reloadLastSearch,
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
