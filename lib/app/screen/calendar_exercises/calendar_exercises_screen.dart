import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/util/date_util.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/widget/error_view.dart';
import 'package:personal_trainer/app/widget/expansion_panel_list_widget.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../app_router.gr.dart';
import 'calendar_exercises_bloc.dart';
import 'calendar_exercises_event.dart';
import 'calendar_exercises_state.dart';

DateTime _selectedDate = DateTime.now();

class CalendarExercisesScreen extends StatelessWidget {
  final String clientId;
  final CalendarExercisesState _calendarExerciseState =
      CalendarExercisesState.started();

  CalendarExercisesScreen({Key? key, required this.clientId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          CalendarExercisesBloc(_calendarExerciseState),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              AppLocalizations.of(context)!.calendar_exercise_screen_title),
        ),
        body: ListView(
          children: [
            CalendarWidget(clientId: clientId),
            Divider(),
            ExerciseExpansionPanels(clientId)
          ],
        ),
        floatingActionButton: SearchExercisesButton(clientId: clientId),
      ),
    );
  }
}

class SearchExercisesButton extends StatelessWidget {
  const SearchExercisesButton({
    Key? key,
    required this.clientId,
  }) : super(key: key);

  final String clientId;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        context
            .pushRoute(ExerciseSearchRoute(
                selectedDate: _selectedDate, clientId: clientId))
            .then((value) => context.read<CalendarExercisesBloc>().add(
                CalendarExercisesCameBackFromExercisesSearchScreen(
                    selectedDate: _selectedDate, clientId: clientId)));
      },
      child: const Icon(Icons.add),
    );
  }
}

class ExerciseExpansionPanels extends StatelessWidget {
  final String clientId;

  ExerciseExpansionPanels(this.clientId);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarExercisesBloc, CalendarExercisesState>(
        builder: (context, state) {
      return state.when(
          started: () => _handleInitialState(context),
          loading: () => Center(child: CircularProgressIndicator()),
          content: (exercises) => _handleDataLoadSuccess(exercises, context),
          error: (error) =>
              ErrorView.error(AppLocalizations.of(context)!.error));
    });
  }

  Center _handleInitialState(BuildContext context) {
    context.read<CalendarExercisesBloc>().add(CalendarExercisesNewDateSelected(
        selectedDate: _selectedDate, clientId: clientId));
    return Center(child: CircularProgressIndicator());
  }

  Widget _handleDataLoadSuccess(
      List<Exercise> exercises, BuildContext context) {
    if (exercises.isNotEmpty) {
      return ExpansionPanelListWidget(
          exercises: exercises,
          clientId: clientId,
          selectedDate: _selectedDate);
    } else {
      return _handleNoExercises(context: context);
    }
  }

  Center _handleNoExercises({required BuildContext context}) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(Dimens.normalPadding),
            child: ErrorView.error(
                AppLocalizations.of(context)!.calendar_no_exercises)));
  }
}

class CalendarWidget extends StatefulWidget {
  final String clientId;

  CalendarWidget({required this.clientId});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.week;

  //TODO: list list list
  List<bool> _list = <bool>[];

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
            context.read<CalendarExercisesBloc>().add(
                CalendarExercisesNewDateSelected(
                    selectedDate: selectedDate, clientId: widget.clientId));
            _selectedDate = selectedDate;
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
