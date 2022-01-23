import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/date_util.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_bloc.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_event.dart';
import 'package:personal_trainer/app/widget/calendar/calendar_state.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  final String clientId;
  final CalendarState _initialState =
      CalendarState.loadEventMarkers(events: {});

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
        onPageChanged: (focusedDay) {
          setState(() {
          //   PAGE_NAVIGATION pageNavigation =
          //       getPageNavigationType(_selectedDate, focusedDay);
            _selectedDate = focusedDay;
          //   context.read<CalendarBloc>().disableMarkersReloadForNextEvent();
          //   context.read<CalendarExercisesBloc>().add(
          //       CalendarExerciseEvent.newDateSelected(
          //           selectedDate: _selectedDate, clientId: widget.clientId));
          //   context.read<CalendarBloc>().add(
          //       CalendarEvent.reloadEventMarkersOnPageChanged(
          //           pageNavigation: pageNavigation));
          });
        },
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
              context.read<CalendarBloc>().disableMarkersReloadForNextEvent();
              context.read<CalendarExercisesBloc>().add(
                  CalendarExerciseEvent.newDateSelected(
                      selectedDate: selectedDate, clientId: widget.clientId));
            });
          }
        },
        eventLoader: (date) {
          return getEventMarkerForDate(date, state);
        },
      );
    });
  }

  List<bool> getEventMarkerForDate(DateTime date, CalendarState state) {
    Log.d("Loading date for markers $date");
    return state.when(eventMarkersData: (events) {
      return shouldShowMarker(events, date);
    }, loadEventMarkers: (pageNavigation, events) {
      context.read<CalendarBloc>().add(CalendarEvent.getEventMarker(
          pageNavigation: pageNavigation,
          clientId: widget.clientId,
          dateTime: date));
      return shouldShowMarker(events, date);
    }, error: (String error) {
      return [];
    });
  }

  List<bool> shouldShowMarker(Map<DateTime, bool> events, DateTime day) {
    var isEvent = events[day] ?? false;
    return isEvent ? [isEvent] : [];
  }

  PAGE_NAVIGATION getPageNavigationType(
      DateTime currentDay, DateTime newSelectedDay) {
    return newSelectedDay.isAfter(currentDay)
        ? PAGE_NAVIGATION.FUTURE
        : PAGE_NAVIGATION.PAST;
  }
}

enum PAGE_NAVIGATION { PAST, FUTURE, NO_NAVIGATION }
