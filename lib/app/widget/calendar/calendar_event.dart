import 'package:freezed_annotation/freezed_annotation.dart';

import 'calendar_widget.dart';

part 'calendar_event.freezed.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.getEventMarker(
      {@Default(PAGE_NAVIGATION.NO_NAVIGATION) PAGE_NAVIGATION pageNavigation,
      required String clientId,
      required DateTime dateTime}) = GetEventMarker;

  const factory CalendarEvent.reloadEventMarkersOnPageChanged(
          {required PAGE_NAVIGATION pageNavigation}) =
      ReloadEventMarkersOnPageChange;
}
