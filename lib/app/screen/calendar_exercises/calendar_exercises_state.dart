import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/app/model/user_exercise.dart';

part 'calendar_exercises_state.freezed.dart';

@freezed
class CalendarExercisesState with _$CalendarExercisesState {
  const factory CalendarExercisesState.started() = _Started;
  const factory CalendarExercisesState.loading() = _Loading;
  const factory CalendarExercisesState.error({required String error}) = _Error;
  const factory CalendarExercisesState.content({required List<UserExercise> userExercises}) = _Content;
}

@freezed
class MyClass {
  factory MyClass() = _MyClass;
}
