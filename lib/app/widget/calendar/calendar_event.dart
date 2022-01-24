import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.getEventMarker(
      {required DateTime selectedDate,
      required String clientId,
      required DateTime dateTime}) = GetEventMarker;

  const factory CalendarEvent.reloadEventMarkersOnPageChanged() = ReloadEventMarkersOnPageChange;
}
