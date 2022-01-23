import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_widget.dart';

part 'calendar_state.freezed.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.eventMarkersData(
      {required Map<DateTime, bool> eventMarkers}) = _EventForDate;

  const factory CalendarState.loadEventMarkers(
      {@Default(PAGE_NAVIGATION.NO_NAVIGATION) PAGE_NAVIGATION pageNavigation,
      required Map<DateTime, bool> events}) = _LoadEvents;

  const factory CalendarState.error({required String error}) = _Error;
}
