import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_state.dart';
import 'package:personal_trainer/app/util/date_util.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final String clientId;

  CalendarWidget({required this.clientId});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.week;

  //TODO: list of dates with exercises
  List<bool> _list = <bool>[];
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarExercisesBloc, CalendarExercisesState>(
      builder: (context, state) {
        return TableCalendar<bool>(
          firstDay: DateUtil.calendarStartDate,
          lastDay: DateUtil.calendarEndDate,
          focusedDay: _selectedDate,
          calendarFormat: _calendarFormat,
          startingDayOfWeek: StartingDayOfWeek.monday,
          selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
          onDaySelected: (selectedDate, focusedDay) {
            _selectedDate = selectedDate;
            context.read<CalendarExercisesBloc>().add(
                CalendarExerciseEvent.newDateSelected(
                    selectedDate: selectedDate, clientId: widget.clientId));
          },
          onFormatChanged: (calendarFormat) {
            setState(() {
              _calendarFormat = calendarFormat;
            });
          },
          eventLoader: (date) => _list,
        );
      },
    );
  }
}
