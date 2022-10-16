// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_exercises_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
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
      _$CalendarExerciseEventCopyWithImpl<$Res, CalendarExerciseEvent>;
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class _$CalendarExerciseEventCopyWithImpl<$Res,
        $Val extends CalendarExerciseEvent>
    implements $CalendarExerciseEventCopyWith<$Res> {
  _$CalendarExerciseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewDateSelectedCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$$NewDateSelectedCopyWith(
          _$NewDateSelected value, $Res Function(_$NewDateSelected) then) =
      __$$NewDateSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDate, String clientId});
}

/// @nodoc
class __$$NewDateSelectedCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res, _$NewDateSelected>
    implements _$$NewDateSelectedCopyWith<$Res> {
  __$$NewDateSelectedCopyWithImpl(
      _$NewDateSelected _value, $Res Function(_$NewDateSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? clientId = null,
  }) {
    return _then(_$NewDateSelected(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: null == clientId
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
            other is _$NewDateSelected &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDateSelectedCopyWith<_$NewDateSelected> get copyWith =>
      __$$NewDateSelectedCopyWithImpl<_$NewDateSelected>(this, _$identity);

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) {
    return newDateSelected(selectedDate, clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) {
    return newDateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
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
      {required final DateTime selectedDate,
      required final String clientId}) = _$NewDateSelected;

  DateTime get selectedDate;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$$NewDateSelectedCopyWith<_$NewDateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchNavigationCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$$SearchNavigationCopyWith(
          _$SearchNavigation value, $Res Function(_$SearchNavigation) then) =
      __$$SearchNavigationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class __$$SearchNavigationCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res, _$SearchNavigation>
    implements _$$SearchNavigationCopyWith<$Res> {
  __$$SearchNavigationCopyWithImpl(
      _$SearchNavigation _value, $Res Function(_$SearchNavigation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$SearchNavigation(
      clientId: null == clientId
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
            other is _$SearchNavigation &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchNavigationCopyWith<_$SearchNavigation> get copyWith =>
      __$$SearchNavigationCopyWithImpl<_$SearchNavigation>(this, _$identity);

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) {
    return navigateToSearchScreen(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) {
    return navigateToSearchScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
    required TResult orElse(),
  }) {
    if (navigateToSearchScreen != null) {
      return navigateToSearchScreen(this);
    }
    return orElse();
  }
}

abstract class SearchNavigation implements CalendarExerciseEvent {
  const factory SearchNavigation({required final String clientId}) =
      _$SearchNavigation;

  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$$SearchNavigationCopyWith<_$SearchNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExerciseDeletedCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$$ExerciseDeletedCopyWith(
          _$ExerciseDeleted value, $Res Function(_$ExerciseDeleted) then) =
      __$$ExerciseDeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userExerciseId, String clientId, int index});
}

/// @nodoc
class __$$ExerciseDeletedCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res, _$ExerciseDeleted>
    implements _$$ExerciseDeletedCopyWith<$Res> {
  __$$ExerciseDeletedCopyWithImpl(
      _$ExerciseDeleted _value, $Res Function(_$ExerciseDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userExerciseId = null,
    Object? clientId = null,
    Object? index = null,
  }) {
    return _then(_$ExerciseDeleted(
      userExerciseId: null == userExerciseId
          ? _value.userExerciseId
          : userExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
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
            other is _$ExerciseDeleted &&
            (identical(other.userExerciseId, userExerciseId) ||
                other.userExerciseId == userExerciseId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userExerciseId, clientId, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseDeletedCopyWith<_$ExerciseDeleted> get copyWith =>
      __$$ExerciseDeletedCopyWithImpl<_$ExerciseDeleted>(this, _$identity);

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) {
    return exerciseDeleted(userExerciseId, clientId, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) {
    return exerciseDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
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
      {required final String userExerciseId,
      required final String clientId,
      required final int index}) = _$ExerciseDeleted;

  String get userExerciseId;
  @override
  String get clientId;
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseDeletedCopyWith<_$ExerciseDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetsSubmitCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$$SetsSubmitCopyWith(
          _$SetsSubmit value, $Res Function(_$SetsSubmit) then) =
      __$$SetsSubmitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clientId, String setsNumber, String userExerciseId});
}

/// @nodoc
class __$$SetsSubmitCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res, _$SetsSubmit>
    implements _$$SetsSubmitCopyWith<$Res> {
  __$$SetsSubmitCopyWithImpl(
      _$SetsSubmit _value, $Res Function(_$SetsSubmit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? setsNumber = null,
    Object? userExerciseId = null,
  }) {
    return _then(_$SetsSubmit(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      setsNumber: null == setsNumber
          ? _value.setsNumber
          : setsNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userExerciseId: null == userExerciseId
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
            other is _$SetsSubmit &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.setsNumber, setsNumber) ||
                other.setsNumber == setsNumber) &&
            (identical(other.userExerciseId, userExerciseId) ||
                other.userExerciseId == userExerciseId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, setsNumber, userExerciseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetsSubmitCopyWith<_$SetsSubmit> get copyWith =>
      __$$SetsSubmitCopyWithImpl<_$SetsSubmit>(this, _$identity);

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) {
    return setsSubmit(clientId, setsNumber, userExerciseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) {
    return setsSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
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
      {required final String clientId,
      required final String setsNumber,
      required final String userExerciseId}) = _$SetsSubmit;

  @override
  String get clientId;
  String get setsNumber;
  String get userExerciseId;
  @override
  @JsonKey(ignore: true)
  _$$SetsSubmitCopyWith<_$SetsSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RepsSubmitCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$$RepsSubmitCopyWith(
          _$RepsSubmit value, $Res Function(_$RepsSubmit) then) =
      __$$RepsSubmitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clientId, String repsNumber, String userExerciseId});
}

/// @nodoc
class __$$RepsSubmitCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res, _$RepsSubmit>
    implements _$$RepsSubmitCopyWith<$Res> {
  __$$RepsSubmitCopyWithImpl(
      _$RepsSubmit _value, $Res Function(_$RepsSubmit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? repsNumber = null,
    Object? userExerciseId = null,
  }) {
    return _then(_$RepsSubmit(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      repsNumber: null == repsNumber
          ? _value.repsNumber
          : repsNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userExerciseId: null == userExerciseId
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
            other is _$RepsSubmit &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.repsNumber, repsNumber) ||
                other.repsNumber == repsNumber) &&
            (identical(other.userExerciseId, userExerciseId) ||
                other.userExerciseId == userExerciseId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, repsNumber, userExerciseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepsSubmitCopyWith<_$RepsSubmit> get copyWith =>
      __$$RepsSubmitCopyWithImpl<_$RepsSubmit>(this, _$identity);

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) {
    return repsSubmit(clientId, repsNumber, userExerciseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) {
    return repsSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
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
      {required final String clientId,
      required final String repsNumber,
      required final String userExerciseId}) = _$RepsSubmit;

  @override
  String get clientId;
  String get repsNumber;
  String get userExerciseId;
  @override
  @JsonKey(ignore: true)
  _$$RepsSubmitCopyWith<_$RepsSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderExercisesCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$$ReorderExercisesCopyWith(
          _$ReorderExercises value, $Res Function(_$ReorderExercises) then) =
      __$$ReorderExercisesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int oldIndex, int newIndex, String clientId});
}

/// @nodoc
class __$$ReorderExercisesCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res, _$ReorderExercises>
    implements _$$ReorderExercisesCopyWith<$Res> {
  __$$ReorderExercisesCopyWithImpl(
      _$ReorderExercises _value, $Res Function(_$ReorderExercises) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
    Object? clientId = null,
  }) {
    return _then(_$ReorderExercises(
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
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
            other is _$ReorderExercises &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderExercisesCopyWith<_$ReorderExercises> get copyWith =>
      __$$ReorderExercisesCopyWithImpl<_$ReorderExercises>(this, _$identity);

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) {
    return reorderExercises(oldIndex, newIndex, clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) {
    return reorderExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
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
      {required final int oldIndex,
      required final int newIndex,
      required final String clientId}) = _$ReorderExercises;

  int get oldIndex;
  int get newIndex;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$$ReorderExercisesCopyWith<_$ReorderExercises> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDateFormatSelectedCopyWith<$Res>
    implements $CalendarExerciseEventCopyWith<$Res> {
  factory _$$NewDateFormatSelectedCopyWith(_$NewDateFormatSelected value,
          $Res Function(_$NewDateFormatSelected) then) =
      __$$NewDateFormatSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CalendarFormat calendarFormat, String clientId});
}

/// @nodoc
class __$$NewDateFormatSelectedCopyWithImpl<$Res>
    extends _$CalendarExerciseEventCopyWithImpl<$Res, _$NewDateFormatSelected>
    implements _$$NewDateFormatSelectedCopyWith<$Res> {
  __$$NewDateFormatSelectedCopyWithImpl(_$NewDateFormatSelected _value,
      $Res Function(_$NewDateFormatSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarFormat = null,
    Object? clientId = null,
  }) {
    return _then(_$NewDateFormatSelected(
      calendarFormat: null == calendarFormat
          ? _value.calendarFormat
          : calendarFormat // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewDateFormatSelected implements NewDateFormatSelected {
  const _$NewDateFormatSelected(
      {required this.calendarFormat, required this.clientId});

  @override
  final CalendarFormat calendarFormat;
  @override
  final String clientId;

  @override
  String toString() {
    return 'CalendarExerciseEvent.newDateFormatSelected(calendarFormat: $calendarFormat, clientId: $clientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDateFormatSelected &&
            (identical(other.calendarFormat, calendarFormat) ||
                other.calendarFormat == calendarFormat) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calendarFormat, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDateFormatSelectedCopyWith<_$NewDateFormatSelected> get copyWith =>
      __$$NewDateFormatSelectedCopyWithImpl<_$NewDateFormatSelected>(
          this, _$identity);

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
    required TResult Function(CalendarFormat calendarFormat, String clientId)
        newDateFormatSelected,
  }) {
    return newDateFormatSelected(calendarFormat, clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, String clientId)? newDateSelected,
    TResult? Function(String clientId)? navigateToSearchScreen,
    TResult? Function(String userExerciseId, String clientId, int index)?
        exerciseDeleted,
    TResult? Function(
            String clientId, String setsNumber, String userExerciseId)?
        setsSubmit,
    TResult? Function(
            String clientId, String repsNumber, String userExerciseId)?
        repsSubmit,
    TResult? Function(int oldIndex, int newIndex, String clientId)?
        reorderExercises,
    TResult? Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
  }) {
    return newDateFormatSelected?.call(calendarFormat, clientId);
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
    TResult Function(CalendarFormat calendarFormat, String clientId)?
        newDateFormatSelected,
    required TResult orElse(),
  }) {
    if (newDateFormatSelected != null) {
      return newDateFormatSelected(calendarFormat, clientId);
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
    required TResult Function(NewDateFormatSelected value)
        newDateFormatSelected,
  }) {
    return newDateFormatSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDateSelected value)? newDateSelected,
    TResult? Function(SearchNavigation value)? navigateToSearchScreen,
    TResult? Function(ExerciseDeleted value)? exerciseDeleted,
    TResult? Function(SetsSubmit value)? setsSubmit,
    TResult? Function(RepsSubmit value)? repsSubmit,
    TResult? Function(ReorderExercises value)? reorderExercises,
    TResult? Function(NewDateFormatSelected value)? newDateFormatSelected,
  }) {
    return newDateFormatSelected?.call(this);
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
    TResult Function(NewDateFormatSelected value)? newDateFormatSelected,
    required TResult orElse(),
  }) {
    if (newDateFormatSelected != null) {
      return newDateFormatSelected(this);
    }
    return orElse();
  }
}

abstract class NewDateFormatSelected implements CalendarExerciseEvent {
  const factory NewDateFormatSelected(
      {required final CalendarFormat calendarFormat,
      required final String clientId}) = _$NewDateFormatSelected;

  CalendarFormat get calendarFormat;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$$NewDateFormatSelectedCopyWith<_$NewDateFormatSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
