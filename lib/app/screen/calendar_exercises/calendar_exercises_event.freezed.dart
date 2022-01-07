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

  _NewDateSelected newDateSelected(
      {required DateTime selectedDate, required String clientId}) {
    return _NewDateSelected(
      selectedDate: selectedDate,
      clientId: clientId,
    );
  }

  _SearchNavigation navigateToSearchScreen({required String clientId}) {
    return _SearchNavigation(
      clientId: clientId,
    );
  }

  _ExerciseDeleted exerciseDeleted(
      {required String userExerciseId,
      required String clientId,
      required int index}) {
    return _ExerciseDeleted(
      userExerciseId: userExerciseId,
      clientId: clientId,
      index: index,
    );
  }

  _SetsSubmit setsSubmit(
      {required String clientId,
      required String setsNumber,
      required String userExerciseId}) {
    return _SetsSubmit(
      clientId: clientId,
      setsNumber: setsNumber,
      userExerciseId: userExerciseId,
    );
  }

  _RepsSubmit repsSubmit(
      {required String clientId,
      required String repsNumber,
      required String userExerciseId}) {
    return _RepsSubmit(
      clientId: clientId,
      repsNumber: repsNumber,
      userExerciseId: userExerciseId,
    );
  }

  _ReorderExercises reorderExercises(
      {required int oldIndex,
      required int newIndex,
      required String clientId}) {
    return _ReorderExercises(
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
    required TResult Function(_NewDateSelected value) newDateSelected,
    required TResult Function(_SearchNavigation value) navigateToSearchScreen,
    required TResult Function(_ExerciseDeleted value) exerciseDeleted,
    required TResult Function(_SetsSubmit value) setsSubmit,
    required TResult Function(_RepsSubmit value) repsSubmit,
    required TResult Function(_ReorderExercises value) reorderExercises,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
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
abstract class _$NewDateSelectedCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$NewDateSelectedCopyWith(
          _NewDateSelected value, $Res Function(_NewDateSelected) then) =
      __$NewDateSelectedCopyWithImpl<$Res>;
  @override
  $Res call({DateTime selectedDate, String clientId});
}

/// @nodoc
class __$NewDateSelectedCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements _$NewDateSelectedCopyWith<$Res> {
  __$NewDateSelectedCopyWithImpl(
      _NewDateSelected _value, $Res Function(_NewDateSelected) _then)
      : super(_value, (v) => _then(v as _NewDateSelected));

  @override
  _NewDateSelected get _value => super._value as _NewDateSelected;

  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? clientId = freezed,
  }) {
    return _then(_NewDateSelected(
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

class _$_NewDateSelected implements _NewDateSelected {
  const _$_NewDateSelected(
      {required this.selectedDate, required this.clientId});

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
            other is _NewDateSelected &&
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
  _$NewDateSelectedCopyWith<_NewDateSelected> get copyWith =>
      __$NewDateSelectedCopyWithImpl<_NewDateSelected>(this, _$identity);

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
    required TResult Function(_NewDateSelected value) newDateSelected,
    required TResult Function(_SearchNavigation value) navigateToSearchScreen,
    required TResult Function(_ExerciseDeleted value) exerciseDeleted,
    required TResult Function(_SetsSubmit value) setsSubmit,
    required TResult Function(_RepsSubmit value) repsSubmit,
    required TResult Function(_ReorderExercises value) reorderExercises,
  }) {
    return newDateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
  }) {
    return newDateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (newDateSelected != null) {
      return newDateSelected(this);
    }
    return orElse();
  }
}

abstract class _NewDateSelected implements CalendarExerciseEvent {
  const factory _NewDateSelected(
      {required DateTime selectedDate,
      required String clientId}) = _$_NewDateSelected;

  DateTime get selectedDate;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$NewDateSelectedCopyWith<_NewDateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchNavigationCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$SearchNavigationCopyWith(
          _SearchNavigation value, $Res Function(_SearchNavigation) then) =
      __$SearchNavigationCopyWithImpl<$Res>;
  @override
  $Res call({String clientId});
}

/// @nodoc
class __$SearchNavigationCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements _$SearchNavigationCopyWith<$Res> {
  __$SearchNavigationCopyWithImpl(
      _SearchNavigation _value, $Res Function(_SearchNavigation) _then)
      : super(_value, (v) => _then(v as _SearchNavigation));

  @override
  _SearchNavigation get _value => super._value as _SearchNavigation;

  @override
  $Res call({
    Object? clientId = freezed,
  }) {
    return _then(_SearchNavigation(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchNavigation implements _SearchNavigation {
  const _$_SearchNavigation({required this.clientId});

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
            other is _SearchNavigation &&
            const DeepCollectionEquality().equals(other.clientId, clientId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clientId));

  @JsonKey(ignore: true)
  @override
  _$SearchNavigationCopyWith<_SearchNavigation> get copyWith =>
      __$SearchNavigationCopyWithImpl<_SearchNavigation>(this, _$identity);

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
    required TResult Function(_NewDateSelected value) newDateSelected,
    required TResult Function(_SearchNavigation value) navigateToSearchScreen,
    required TResult Function(_ExerciseDeleted value) exerciseDeleted,
    required TResult Function(_SetsSubmit value) setsSubmit,
    required TResult Function(_RepsSubmit value) repsSubmit,
    required TResult Function(_ReorderExercises value) reorderExercises,
  }) {
    return navigateToSearchScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
  }) {
    return navigateToSearchScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (navigateToSearchScreen != null) {
      return navigateToSearchScreen(this);
    }
    return orElse();
  }
}

abstract class _SearchNavigation implements CalendarExerciseEvent {
  const factory _SearchNavigation({required String clientId}) =
      _$_SearchNavigation;

  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$SearchNavigationCopyWith<_SearchNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExerciseDeletedCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$ExerciseDeletedCopyWith(
          _ExerciseDeleted value, $Res Function(_ExerciseDeleted) then) =
      __$ExerciseDeletedCopyWithImpl<$Res>;
  @override
  $Res call({String userExerciseId, String clientId, int index});
}

/// @nodoc
class __$ExerciseDeletedCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements _$ExerciseDeletedCopyWith<$Res> {
  __$ExerciseDeletedCopyWithImpl(
      _ExerciseDeleted _value, $Res Function(_ExerciseDeleted) _then)
      : super(_value, (v) => _then(v as _ExerciseDeleted));

  @override
  _ExerciseDeleted get _value => super._value as _ExerciseDeleted;

  @override
  $Res call({
    Object? userExerciseId = freezed,
    Object? clientId = freezed,
    Object? index = freezed,
  }) {
    return _then(_ExerciseDeleted(
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

class _$_ExerciseDeleted implements _ExerciseDeleted {
  const _$_ExerciseDeleted(
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
            other is _ExerciseDeleted &&
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
  _$ExerciseDeletedCopyWith<_ExerciseDeleted> get copyWith =>
      __$ExerciseDeletedCopyWithImpl<_ExerciseDeleted>(this, _$identity);

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
    required TResult Function(_NewDateSelected value) newDateSelected,
    required TResult Function(_SearchNavigation value) navigateToSearchScreen,
    required TResult Function(_ExerciseDeleted value) exerciseDeleted,
    required TResult Function(_SetsSubmit value) setsSubmit,
    required TResult Function(_RepsSubmit value) repsSubmit,
    required TResult Function(_ReorderExercises value) reorderExercises,
  }) {
    return exerciseDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
  }) {
    return exerciseDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (exerciseDeleted != null) {
      return exerciseDeleted(this);
    }
    return orElse();
  }
}

abstract class _ExerciseDeleted implements CalendarExerciseEvent {
  const factory _ExerciseDeleted(
      {required String userExerciseId,
      required String clientId,
      required int index}) = _$_ExerciseDeleted;

  String get userExerciseId;
  @override
  String get clientId;
  int get index;
  @override
  @JsonKey(ignore: true)
  _$ExerciseDeletedCopyWith<_ExerciseDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetsSubmitCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$SetsSubmitCopyWith(
          _SetsSubmit value, $Res Function(_SetsSubmit) then) =
      __$SetsSubmitCopyWithImpl<$Res>;
  @override
  $Res call({String clientId, String setsNumber, String userExerciseId});
}

/// @nodoc
class __$SetsSubmitCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements _$SetsSubmitCopyWith<$Res> {
  __$SetsSubmitCopyWithImpl(
      _SetsSubmit _value, $Res Function(_SetsSubmit) _then)
      : super(_value, (v) => _then(v as _SetsSubmit));

  @override
  _SetsSubmit get _value => super._value as _SetsSubmit;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? setsNumber = freezed,
    Object? userExerciseId = freezed,
  }) {
    return _then(_SetsSubmit(
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

class _$_SetsSubmit implements _SetsSubmit {
  const _$_SetsSubmit(
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
            other is _SetsSubmit &&
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
  _$SetsSubmitCopyWith<_SetsSubmit> get copyWith =>
      __$SetsSubmitCopyWithImpl<_SetsSubmit>(this, _$identity);

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
    required TResult Function(_NewDateSelected value) newDateSelected,
    required TResult Function(_SearchNavigation value) navigateToSearchScreen,
    required TResult Function(_ExerciseDeleted value) exerciseDeleted,
    required TResult Function(_SetsSubmit value) setsSubmit,
    required TResult Function(_RepsSubmit value) repsSubmit,
    required TResult Function(_ReorderExercises value) reorderExercises,
  }) {
    return setsSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
  }) {
    return setsSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (setsSubmit != null) {
      return setsSubmit(this);
    }
    return orElse();
  }
}

abstract class _SetsSubmit implements CalendarExerciseEvent {
  const factory _SetsSubmit(
      {required String clientId,
      required String setsNumber,
      required String userExerciseId}) = _$_SetsSubmit;

  @override
  String get clientId;
  String get setsNumber;
  String get userExerciseId;
  @override
  @JsonKey(ignore: true)
  _$SetsSubmitCopyWith<_SetsSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RepsSubmitCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$RepsSubmitCopyWith(
          _RepsSubmit value, $Res Function(_RepsSubmit) then) =
      __$RepsSubmitCopyWithImpl<$Res>;
  @override
  $Res call({String clientId, String repsNumber, String userExerciseId});
}

/// @nodoc
class __$RepsSubmitCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements _$RepsSubmitCopyWith<$Res> {
  __$RepsSubmitCopyWithImpl(
      _RepsSubmit _value, $Res Function(_RepsSubmit) _then)
      : super(_value, (v) => _then(v as _RepsSubmit));

  @override
  _RepsSubmit get _value => super._value as _RepsSubmit;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? repsNumber = freezed,
    Object? userExerciseId = freezed,
  }) {
    return _then(_RepsSubmit(
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

class _$_RepsSubmit implements _RepsSubmit {
  const _$_RepsSubmit(
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
            other is _RepsSubmit &&
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
  _$RepsSubmitCopyWith<_RepsSubmit> get copyWith =>
      __$RepsSubmitCopyWithImpl<_RepsSubmit>(this, _$identity);

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
    required TResult Function(_NewDateSelected value) newDateSelected,
    required TResult Function(_SearchNavigation value) navigateToSearchScreen,
    required TResult Function(_ExerciseDeleted value) exerciseDeleted,
    required TResult Function(_SetsSubmit value) setsSubmit,
    required TResult Function(_RepsSubmit value) repsSubmit,
    required TResult Function(_ReorderExercises value) reorderExercises,
  }) {
    return repsSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
  }) {
    return repsSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (repsSubmit != null) {
      return repsSubmit(this);
    }
    return orElse();
  }
}

abstract class _RepsSubmit implements CalendarExerciseEvent {
  const factory _RepsSubmit(
      {required String clientId,
      required String repsNumber,
      required String userExerciseId}) = _$_RepsSubmit;

  @override
  String get clientId;
  String get repsNumber;
  String get userExerciseId;
  @override
  @JsonKey(ignore: true)
  _$RepsSubmitCopyWith<_RepsSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReorderExercisesCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$ReorderExercisesCopyWith(
          _ReorderExercises value, $Res Function(_ReorderExercises) then) =
      __$ReorderExercisesCopyWithImpl<$Res>;
  @override
  $Res call({int oldIndex, int newIndex, String clientId});
}

/// @nodoc
class __$ReorderExercisesCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res>
    implements _$ReorderExercisesCopyWith<$Res> {
  __$ReorderExercisesCopyWithImpl(
      _ReorderExercises _value, $Res Function(_ReorderExercises) _then)
      : super(_value, (v) => _then(v as _ReorderExercises));

  @override
  _ReorderExercises get _value => super._value as _ReorderExercises;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
    Object? clientId = freezed,
  }) {
    return _then(_ReorderExercises(
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

class _$_ReorderExercises implements _ReorderExercises {
  const _$_ReorderExercises(
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
            other is _ReorderExercises &&
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
  _$ReorderExercisesCopyWith<_ReorderExercises> get copyWith =>
      __$ReorderExercisesCopyWithImpl<_ReorderExercises>(this, _$identity);

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
    required TResult Function(_NewDateSelected value) newDateSelected,
    required TResult Function(_SearchNavigation value) navigateToSearchScreen,
    required TResult Function(_ExerciseDeleted value) exerciseDeleted,
    required TResult Function(_SetsSubmit value) setsSubmit,
    required TResult Function(_RepsSubmit value) repsSubmit,
    required TResult Function(_ReorderExercises value) reorderExercises,
  }) {
    return reorderExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
  }) {
    return reorderExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewDateSelected value)? newDateSelected,
    TResult Function(_SearchNavigation value)? navigateToSearchScreen,
    TResult Function(_ExerciseDeleted value)? exerciseDeleted,
    TResult Function(_SetsSubmit value)? setsSubmit,
    TResult Function(_RepsSubmit value)? repsSubmit,
    TResult Function(_ReorderExercises value)? reorderExercises,
    required TResult orElse(),
  }) {
    if (reorderExercises != null) {
      return reorderExercises(this);
    }
    return orElse();
  }
}

abstract class _ReorderExercises implements CalendarExerciseEvent {
  const factory _ReorderExercises(
      {required int oldIndex,
      required int newIndex,
      required String clientId}) = _$_ReorderExercises;

  int get oldIndex;
  int get newIndex;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$ReorderExercisesCopyWith<_ReorderExercises> get copyWith =>
      throw _privateConstructorUsedError;
}
