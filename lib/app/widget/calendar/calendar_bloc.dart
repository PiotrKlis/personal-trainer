import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'calendar_event.dart';
import 'calendar_provider.dart';
import 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final CalendarProvider _calendarExerciseProvider =
      GetIt.I.get<CalendarProvider>();

  Map<DateTime, bool> events = {};

  CalendarBloc(CalendarState initialState) : super(initialState) {
    on<GetCalendarEventMarker>((event, emitter) async {
      try {
        var result = await _calendarExerciseProvider.getExerciseMarkerFor(
            dateTime: event.dateTime, clientId: event.clientId);
        events.addAll({event.dateTime: result});
        if (events.length == 7) {
          emitter(CalendarState.eventForDate(events: events));
          events = {};
        }
      } catch (error) {
        emitter(CalendarState.error(error: error.toString()));
      }
    });
  }
}
