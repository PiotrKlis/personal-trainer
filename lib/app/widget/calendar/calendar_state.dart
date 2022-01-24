import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_state.freezed.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.eventMarkersData(
      {required Map<DateTime, bool> eventMarkers}) = _EventForDate;

  const factory CalendarState.loadEventMarkers(
      {required Map<DateTime, bool> events}) = _LoadEvents;

  const factory CalendarState.error({required String error}) = _Error;
}
