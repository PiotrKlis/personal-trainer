import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/date_util.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_bloc.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_event.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_state.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  final String clientId;
  final CalendarState _initialState = CalendarState.loadEvents(events: {});

  CalendarWidget({required this.clientId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          CalendarBloc(_initialState, context.read<CalendarExercisesBloc>()),
      child: TableCalendarWidget(clientId: clientId),
    );
  }
}

class TableCalendarWidget extends StatefulWidget {
  final String clientId;

  const TableCalendarWidget({Key? key, required this.clientId})
      : super(key: key);

  @override
  State<TableCalendarWidget> createState() => _TableCalendarState();
}

class _TableCalendarState extends State<TableCalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.week;

  //TODO: list of dates with exercises
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(builder: (context, state) {
      return TableCalendar<bool>(
        headerStyle: HeaderStyle(formatButtonVisible: false),
        calendarBuilders:
            CalendarBuilders(singleMarkerBuilder: (context, date, event) {
          return Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              width: Dimens.eventMarkerWidth,
              height: Dimens.eventMarkerHeight);
        }),
        firstDay: DateUtil.calendarStartDate,
        lastDay: DateUtil.calendarEndDate,
        focusedDay: _selectedDate,
        calendarFormat: _calendarFormat,
        startingDayOfWeek: StartingDayOfWeek.monday,
        selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
        onDaySelected: (selectedDate, focusedDay) {
          if (_selectedDate != selectedDate) {
            setState(() {
              _selectedDate = selectedDate;
              context.read<CalendarBloc>().clearExercisesCache();
              context.read<CalendarExercisesBloc>().add(
                  CalendarExerciseEvent.newDateSelected(
                      selectedDate: selectedDate, clientId: widget.clientId));
            });
          }
        },
        eventLoader: (date) {
          return getEventForDate(date, state);
        },
      );
    });
  }

  List<bool> getEventForDate(DateTime day, CalendarState state) {
    return state.when(eventForDate: (events) {
      return shouldShowMarker(events, day);
    }, loadEvents: (events) {
      context.read<CalendarBloc>().add(CalendarEvent.getCalendarEventMarker(
          dateTime: day, clientId: widget.clientId));
      return shouldShowMarker(events, day);
    }, error: (String error) {
      return [];
    });
  }

  List<bool> shouldShowMarker(Map<DateTime, bool> events, DateTime day) {
    var isEvent = events[day] ?? false;
    return isEvent ? [isEvent] : [];
  }
}
