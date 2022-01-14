// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_exercises_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarExerciseEventTearOff {
  const _$CalendarExerciseEventTearOff();

  NewDateSelected newDateSelected(
      {required DateTime selectedDate, required String clientId}) {
    return NewDateSelected(
      selectedDate: selectedDate,
      clientId: clientId,
    );
  }

  SearchNavigation navigateToSearchScreen({required String clientId}) {
    return SearchNavigation(
      clientId: clientId,
    );
  }

  ExerciseDeleted exerciseDeleted(
      {required String userExerciseId,
      required String clientId,
      required int index}) {
    return ExerciseDeleted(
      userExerciseId: userExerciseId,
      clientId: clientId,
      index: index,
    );
  }

  SetsSubmit setsSubmit(
      {required String clientId,
      required String setsNumber,
      required String userExerciseId}) {
    return SetsSubmit(
      clientId: clientId,
      setsNumber: setsNumber,
      userExerciseId: userExerciseId,
    );
  }

  RepsSubmit repsSubmit(
      {required String clientId,
      required String repsNumber,
      required String userExerciseId}) {
    return RepsSubmit(
      clientId: clientId,
      repsNumber: repsNumber,
      userExerciseId: userExerciseId,
    );
  }

  ReorderExercises reorderExercises(
      {required int oldIndex,
      required int newIndex,
      required String clientId}) {
    return ReorderExercises(
      oldIndex: oldIndex,
      newIndex: newIndex,
      clientId: clientId,
    );
  }
}

/// @nodoc
const $CalendarExerciseEvent = _$CalendarExerciseEventTearOff();

/// @nodoc
mixin _$CalendarExerciseEvent {
  String get clientId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, String clientId)
        newDateSelected,
    required TResult Function(String clientId) navigateToSearchScreen,
    required TResult Function(String userExerciseId, String clientId, int index)
        exerciseDeleted,
    required TResult Function(
            String clientId, String setsNumber, String userExerciseId)
        setsSubmit,
    required TResult Function(
            String clientId, String repsNumber, String userExerciseId)
        repsSubmit,
    required TResult Function(int oldIndex, int newIndex, String clientId)
        reorderExercises,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDateSelected value) newDateSelected,
    required TResult Function(SearchNavigation value) navigateToSearchScreen,
    required TResult Function(ExerciseDeleted value) exerciseDeleted,
    required TResult Function(SetsSubmit value) setsSubmit,
    required TResult Function(RepsSubmit value) repsSubmit,
    required TResult Function(ReorderExercises value) reorderExercises,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarExerciseEventCopyWith<CalendarExerciseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarExerciseEventCopyWith<$Res> {
  factory $CalendarExerciseEventCopyWith(CalendarExerciseEvent value,
          $Res Function(CalendarExerciseEvent) then) =
      _$CalendarExerciseEventCopyWithImpl<$Res>;
  $Res call({String clientId});
}

/// @nodoc
class _$CalendarExerciseEventCopyWithImpl<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  _$CalendarExerciseEventCopyWithImpl(this._value, this._then);

  final CalendarExerciseEvent _value;
  // ignore: unused_field
  final $Res Function(CalendarExerciseEvent) _then;

  @override
  $Res call({
    Object? clientId = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $NewDateSelectedCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory $NewDateSelectedCopyWith(
          NewDateSelected value, $Res Function(NewDateSelected) then) =
      _$NewDateSelectedCopyWithImpl<$Res>;
  @override
  $Res call({DateTime selectedDate, String clientId});
}

/// @nodoc
class _$NewDateSelectedCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements $NewDateSelectedCopyWith<$Res> {
  _$NewDateSelectedCopyWithImpl(
      NewDateSelected _value, $Res Function(NewDateSelected) _then)
      : super(_value, (v) => _then(v as NewDateSelected));

  @override
  NewDateSelected get _value => super._value as NewDateSelected;

  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? clientId = freezed,
  }) {
    return _then(NewDateSelected(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewDateSelected implements NewDateSelected {
  const _$NewDateSelected({required this.selectedDate, required this.clientId});

  @override
  final DateTime selectedDate;
  @override
  final String clientId;

  @override
  String toString() {
    return 'CalendarExerciseEvent.newDateSelected(selectedDate: $selectedDate, clientId: $clientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewDateSelected &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate) &&
            const DeepCollectionEquality().equals(other.clientId, clientId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDate),
      const DeepCollectionEquality().hash(clientId));

  @JsonKey(ignore: true)
  @override
  $NewDateSelectedCopyWith<NewDateSelected> get copyWith =>
      _$NewDateSelectedCopyWithImpl<NewDateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, String clientId)
        newDateSelected,
    required TResult Function(String clientId) navigateToSearchScreen,
    required TResult Function(String userExerciseId, String clientId, int index)
        exerciseDeleted,
    required TResult Function(
            String clientId, String setsNumber, String userExerciseId)
        setsSubmit,
    required TResult Function(
            String clientId, String repsNumber, String userExerciseId)
        repsSubmit,
    required TResult Function(int oldIndex, int newIndex, String clientId)
        reorderExercises,
  }) {
    return newDateSelected(selectedDate, clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
  }) {
    return newDateSelected?.call(selectedDate, clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    required TResult orElse(),
  }) {
    if (newDateSelected != null) {
      return newDateSelected(selectedDate, clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDateSelected value) newDateSelected,
    required TResult Function(SearchNavigation value) navigateToSearchScreen,
    required TResult Function(ExerciseDeleted value) exerciseDeleted,
    required TResult Function(SetsSubmit value) setsSubmit,
    required TResult Function(RepsSubmit value) repsSubmit,
    required TResult Function(ReorderExercises value) reorderExercises,
  }) {
    return newDateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
  }) {
    return newDateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (newDateSelected != null) {
      return newDateSelected(this);
    }
    return orElse();
  }
}

abstract class NewDateSelected implements CalendarExerciseEvent {
  const factory NewDateSelected(
      {required DateTime selectedDate,
      required String clientId}) = _$NewDateSelected;

  DateTime get selectedDate;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  $NewDateSelectedCopyWith<NewDateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNavigationCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory $SearchNavigationCopyWith(
          SearchNavigation value, $Res Function(SearchNavigation) then) =
      _$SearchNavigationCopyWithImpl<$Res>;
  @override
  $Res call({String clientId});
}

/// @nodoc
class _$SearchNavigationCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements $SearchNavigationCopyWith<$Res> {
  _$SearchNavigationCopyWithImpl(
      SearchNavigation _value, $Res Function(SearchNavigation) _then)
      : super(_value, (v) => _then(v as SearchNavigation));

  @override
  SearchNavigation get _value => super._value as SearchNavigation;

  @override
  $Res call({
    Object? clientId = freezed,
  }) {
    return _then(SearchNavigation(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchNavigation implements SearchNavigation {
  const _$SearchNavigation({required this.clientId});

  @override
  final String clientId;

  @override
  String toString() {
    return 'CalendarExerciseEvent.navigateToSearchScreen(clientId: $clientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchNavigation &&
            const DeepCollectionEquality().equals(other.clientId, clientId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clientId));

  @JsonKey(ignore: true)
  @override
  $SearchNavigationCopyWith<SearchNavigation> get copyWith =>
      _$SearchNavigationCopyWithImpl<SearchNavigation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, String clientId)
        newDateSelected,
    required TResult Function(String clientId) navigateToSearchScreen,
    required TResult Function(String userExerciseId, String clientId, int index)
        exerciseDeleted,
    required TResult Function(
            String clientId, String setsNumber, String userExerciseId)
        setsSubmit,
    required TResult Function(
            String clientId, String repsNumber, String userExerciseId)
        repsSubmit,
    required TResult Function(int oldIndex, int newIndex, String clientId)
        reorderExercises,
  }) {
    return navigateToSearchScreen(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
  }) {
    return navigateToSearchScreen?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    required TResult orElse(),
  }) {
    if (navigateToSearchScreen != null) {
      return navigateToSearchScreen(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDateSelected value) newDateSelected,
    required TResult Function(SearchNavigation value) navigateToSearchScreen,
    required TResult Function(ExerciseDeleted value) exerciseDeleted,
    required TResult Function(SetsSubmit value) setsSubmit,
    required TResult Function(RepsSubmit value) repsSubmit,
    required TResult Function(ReorderExercises value) reorderExercises,
  }) {
    return navigateToSearchScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
  }) {
    return navigateToSearchScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (navigateToSearchScreen != null) {
      return navigateToSearchScreen(this);
    }
    return orElse();
  }
}

abstract class SearchNavigation implements CalendarExerciseEvent {
  const factory SearchNavigation({required String clientId}) =
      _$SearchNavigation;

  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  $SearchNavigationCopyWith<SearchNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDeletedCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory $ExerciseDeletedCopyWith(
          ExerciseDeleted value, $Res Function(ExerciseDeleted) then) =
      _$ExerciseDeletedCopyWithImpl<$Res>;
  @override
  $Res call({String userExerciseId, String clientId, int index});
}

/// @nodoc
class _$ExerciseDeletedCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements $ExerciseDeletedCopyWith<$Res> {
  _$ExerciseDeletedCopyWithImpl(
      ExerciseDeleted _value, $Res Function(ExerciseDeleted) _then)
      : super(_value, (v) => _then(v as ExerciseDeleted));

  @override
  ExerciseDeleted get _value => super._value as ExerciseDeleted;

  @override
  $Res call({
    Object? userExerciseId = freezed,
    Object? clientId = freezed,
    Object? index = freezed,
  }) {
    return _then(ExerciseDeleted(
      userExerciseId: userExerciseId == freezed
          ? _value.userExerciseId
          : userExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExerciseDeleted implements ExerciseDeleted {
  const _$ExerciseDeleted(
      {required this.userExerciseId,
      required this.clientId,
      required this.index});

  @override
  final String userExerciseId;
  @override
  final String clientId;
  @override
  final int index;

  @override
  String toString() {
    return 'CalendarExerciseEvent.exerciseDeleted(userExerciseId: $userExerciseId, clientId: $clientId, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExerciseDeleted &&
            const DeepCollectionEquality()
                .equals(other.userExerciseId, userExerciseId) &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userExerciseId),
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $ExerciseDeletedCopyWith<ExerciseDeleted> get copyWith =>
      _$ExerciseDeletedCopyWithImpl<ExerciseDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, String clientId)
        newDateSelected,
    required TResult Function(String clientId) navigateToSearchScreen,
    required TResult Function(String userExerciseId, String clientId, int index)
        exerciseDeleted,
    required TResult Function(
            String clientId, String setsNumber, String userExerciseId)
        setsSubmit,
    required TResult Function(
            String clientId, String repsNumber, String userExerciseId)
        repsSubmit,
    required TResult Function(int oldIndex, int newIndex, String clientId)
        reorderExercises,
  }) {
    return exerciseDeleted(userExerciseId, clientId, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
  }) {
    return exerciseDeleted?.call(userExerciseId, clientId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    required TResult orElse(),
  }) {
    if (exerciseDeleted != null) {
      return exerciseDeleted(userExerciseId, clientId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDateSelected value) newDateSelected,
    required TResult Function(SearchNavigation value) navigateToSearchScreen,
    required TResult Function(ExerciseDeleted value) exerciseDeleted,
    required TResult Function(SetsSubmit value) setsSubmit,
    required TResult Function(RepsSubmit value) repsSubmit,
    required TResult Function(ReorderExercises value) reorderExercises,
  }) {
    return exerciseDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
  }) {
    return exerciseDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (exerciseDeleted != null) {
      return exerciseDeleted(this);
    }
    return orElse();
  }
}

abstract class ExerciseDeleted implements CalendarExerciseEvent {
  const factory ExerciseDeleted(
      {required String userExerciseId,
      required String clientId,
      required int index}) = _$ExerciseDeleted;

  String get userExerciseId;
  @override
  String get clientId;
  int get index;
  @override
  @JsonKey(ignore: true)
  $ExerciseDeletedCopyWith<ExerciseDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetsSubmitCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory $SetsSubmitCopyWith(
          SetsSubmit value, $Res Function(SetsSubmit) then) =
      _$SetsSubmitCopyWithImpl<$Res>;
  @override
  $Res call({String clientId, String setsNumber, String userExerciseId});
}

/// @nodoc
class _$SetsSubmitCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements $SetsSubmitCopyWith<$Res> {
  _$SetsSubmitCopyWithImpl(SetsSubmit _value, $Res Function(SetsSubmit) _then)
      : super(_value, (v) => _then(v as SetsSubmit));

  @override
  SetsSubmit get _value => super._value as SetsSubmit;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? setsNumber = freezed,
    Object? userExerciseId = freezed,
  }) {
    return _then(SetsSubmit(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      setsNumber: setsNumber == freezed
          ? _value.setsNumber
          : setsNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userExerciseId: userExerciseId == freezed
          ? _value.userExerciseId
          : userExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetsSubmit implements SetsSubmit {
  const _$SetsSubmit(
      {required this.clientId,
      required this.setsNumber,
      required this.userExerciseId});

  @override
  final String clientId;
  @override
  final String setsNumber;
  @override
  final String userExerciseId;

  @override
  String toString() {
    return 'CalendarExerciseEvent.setsSubmit(clientId: $clientId, setsNumber: $setsNumber, userExerciseId: $userExerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetsSubmit &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality()
                .equals(other.setsNumber, setsNumber) &&
            const DeepCollectionEquality()
                .equals(other.userExerciseId, userExerciseId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(setsNumber),
      const DeepCollectionEquality().hash(userExerciseId));

  @JsonKey(ignore: true)
  @override
  $SetsSubmitCopyWith<SetsSubmit> get copyWith =>
      _$SetsSubmitCopyWithImpl<SetsSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, String clientId)
        newDateSelected,
    required TResult Function(String clientId) navigateToSearchScreen,
    required TResult Function(String userExerciseId, String clientId, int index)
        exerciseDeleted,
    required TResult Function(
            String clientId, String setsNumber, String userExerciseId)
        setsSubmit,
    required TResult Function(
            String clientId, String repsNumber, String userExerciseId)
        repsSubmit,
    required TResult Function(int oldIndex, int newIndex, String clientId)
        reorderExercises,
  }) {
    return setsSubmit(clientId, setsNumber, userExerciseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
  }) {
    return setsSubmit?.call(clientId, setsNumber, userExerciseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    required TResult orElse(),
  }) {
    if (setsSubmit != null) {
      return setsSubmit(clientId, setsNumber, userExerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDateSelected value) newDateSelected,
    required TResult Function(SearchNavigation value) navigateToSearchScreen,
    required TResult Function(ExerciseDeleted value) exerciseDeleted,
    required TResult Function(SetsSubmit value) setsSubmit,
    required TResult Function(RepsSubmit value) repsSubmit,
    required TResult Function(ReorderExercises value) reorderExercises,
  }) {
    return setsSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
  }) {
    return setsSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (setsSubmit != null) {
      return setsSubmit(this);
    }
    return orElse();
  }
}

abstract class SetsSubmit implements CalendarExerciseEvent {
  const factory SetsSubmit(
      {required String clientId,
      required String setsNumber,
      required String userExerciseId}) = _$SetsSubmit;

  @override
  String get clientId;
  String get setsNumber;
  String get userExerciseId;
  @override
  @JsonKey(ignore: true)
  $SetsSubmitCopyWith<SetsSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepsSubmitCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory $RepsSubmitCopyWith(
          RepsSubmit value, $Res Function(RepsSubmit) then) =
      _$RepsSubmitCopyWithImpl<$Res>;
  @override
  $Res call({String clientId, String repsNumber, String userExerciseId});
}

/// @nodoc
class _$RepsSubmitCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements $RepsSubmitCopyWith<$Res> {
  _$RepsSubmitCopyWithImpl(RepsSubmit _value, $Res Function(RepsSubmit) _then)
      : super(_value, (v) => _then(v as RepsSubmit));

  @override
  RepsSubmit get _value => super._value as RepsSubmit;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? repsNumber = freezed,
    Object? userExerciseId = freezed,
  }) {
    return _then(RepsSubmit(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      repsNumber: repsNumber == freezed
          ? _value.repsNumber
          : repsNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userExerciseId: userExerciseId == freezed
          ? _value.userExerciseId
          : userExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepsSubmit implements RepsSubmit {
  const _$RepsSubmit(
      {required this.clientId,
      required this.repsNumber,
      required this.userExerciseId});

  @override
  final String clientId;
  @override
  final String repsNumber;
  @override
  final String userExerciseId;

  @override
  String toString() {
    return 'CalendarExerciseEvent.repsSubmit(clientId: $clientId, repsNumber: $repsNumber, userExerciseId: $userExerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepsSubmit &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality()
                .equals(other.repsNumber, repsNumber) &&
            const DeepCollectionEquality()
                .equals(other.userExerciseId, userExerciseId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(repsNumber),
      const DeepCollectionEquality().hash(userExerciseId));

  @JsonKey(ignore: true)
  @override
  $RepsSubmitCopyWith<RepsSubmit> get copyWith =>
      _$RepsSubmitCopyWithImpl<RepsSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, String clientId)
        newDateSelected,
    required TResult Function(String clientId) navigateToSearchScreen,
    required TResult Function(String userExerciseId, String clientId, int index)
        exerciseDeleted,
    required TResult Function(
            String clientId, String setsNumber, String userExerciseId)
        setsSubmit,
    required TResult Function(
            String clientId, String repsNumber, String userExerciseId)
        repsSubmit,
    required TResult Function(int oldIndex, int newIndex, String clientId)
        reorderExercises,
  }) {
    return repsSubmit(clientId, repsNumber, userExerciseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
  }) {
    return repsSubmit?.call(clientId, repsNumber, userExerciseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    required TResult orElse(),
  }) {
    if (repsSubmit != null) {
      return repsSubmit(clientId, repsNumber, userExerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDateSelected value) newDateSelected,
    required TResult Function(SearchNavigation value) navigateToSearchScreen,
    required TResult Function(ExerciseDeleted value) exerciseDeleted,
    required TResult Function(SetsSubmit value) setsSubmit,
    required TResult Function(RepsSubmit value) repsSubmit,
    required TResult Function(ReorderExercises value) reorderExercises,
  }) {
    return repsSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
  }) {
    return repsSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (repsSubmit != null) {
      return repsSubmit(this);
    }
    return orElse();
  }
}

abstract class RepsSubmit implements CalendarExerciseEvent {
  const factory RepsSubmit(
      {required String clientId,
      required String repsNumber,
      required String userExerciseId}) = _$RepsSubmit;

  @override
  String get clientId;
  String get repsNumber;
  String get userExerciseId;
  @override
  @JsonKey(ignore: true)
  $RepsSubmitCopyWith<RepsSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReorderExercisesCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory $ReorderExercisesCopyWith(
          ReorderExercises value, $Res Function(ReorderExercises) then) =
      _$ReorderExercisesCopyWithImpl<$Res>;
  @override
  $Res call({int oldIndex, int newIndex, String clientId});
}

/// @nodoc
class _$ReorderExercisesCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements $ReorderExercisesCopyWith<$Res> {
  _$ReorderExercisesCopyWithImpl(
      ReorderExercises _value, $Res Function(ReorderExercises) _then)
      : super(_value, (v) => _then(v as ReorderExercises));

  @override
  ReorderExercises get _value => super._value as ReorderExercises;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
    Object? clientId = freezed,
  }) {
    return _then(ReorderExercises(
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReorderExercises implements ReorderExercises {
  const _$ReorderExercises(
      {required this.oldIndex, required this.newIndex, required this.clientId});

  @override
  final int oldIndex;
  @override
  final int newIndex;
  @override
  final String clientId;

  @override
  String toString() {
    return 'CalendarExerciseEvent.reorderExercises(oldIndex: $oldIndex, newIndex: $newIndex, clientId: $clientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReorderExercises &&
            const DeepCollectionEquality().equals(other.oldIndex, oldIndex) &&
            const DeepCollectionEquality().equals(other.newIndex, newIndex) &&
            const DeepCollectionEquality().equals(other.clientId, clientId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldIndex),
      const DeepCollectionEquality().hash(newIndex),
      const DeepCollectionEquality().hash(clientId));

  @JsonKey(ignore: true)
  @override
  $ReorderExercisesCopyWith<ReorderExercises> get copyWith =>
      _$ReorderExercisesCopyWithImpl<ReorderExercises>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, String clientId)
        newDateSelected,
    required TResult Function(String clientId) navigateToSearchScreen,
    required TResult Function(String userExerciseId, String clientId, int index)
        exerciseDeleted,
    required TResult Function(
            String clientId, String setsNumber, String userExerciseId)
        setsSubmit,
    required TResult Function(
            String clientId, String repsNumber, String userExerciseId)
        repsSubmit,
    required TResult Function(int oldIndex, int newIndex, String clientId)
        reorderExercises,
  }) {
    return reorderExercises(oldIndex, newIndex, clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
  }) {
    return reorderExercises?.call(oldIndex, newIndex, clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult Function(String clientId)? navigateToSearchScreen,
    TResult Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult Function(String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult Function(String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    required TResult orElse(),
  }) {
    if (reorderExercises != null) {
      return reorderExercises(oldIndex, newIndex, clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDateSelected value) newDateSelected,
    required TResult Function(SearchNavigation value) navigateToSearchScreen,
    required TResult Function(ExerciseDeleted value) exerciseDeleted,
    required TResult Function(SetsSubmit value) setsSubmit,
    required TResult Function(RepsSubmit value) repsSubmit,
    required TResult Function(ReorderExercises value) reorderExercises,
  }) {
    return reorderExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
  }) {
    return reorderExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDateSelected value)? newDateSelected,
    TResult Function(SearchNavigation value)? navigateToSearchScreen,
    TResult Function(ExerciseDeleted value)? exerciseDeleted,
    TResult Function(SetsSubmit value)? setsSubmit,
    TResult Function(RepsSubmit value)? repsSubmit,
    TResult Function(ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (reorderExercises != null) {
      return reorderExercises(this);
    }
    return orElse();
  }
}

abstract class ReorderExercises implements CalendarExerciseEvent {
  const factory ReorderExercises(
      {required int oldIndex,
      required int newIndex,
      required String clientId}) = _$ReorderExercises;

  int get oldIndex;
  int get newIndex;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  $ReorderExercisesCopyWith<ReorderExercises> get copyWith =>
      throw _privateConstructorUsedError;
}
