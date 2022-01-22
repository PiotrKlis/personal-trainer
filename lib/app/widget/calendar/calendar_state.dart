import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';
part 'calendar_state.freezed.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.eventForDate({required Map<DateTime, bool> events}) = _EventForDate;
  const factory CalendarState.loadEvents({required Map<DateTime, bool> events}) = _LoadEvents;
  const factory CalendarState.error({required String error}) = _Error;
}
