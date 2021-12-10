import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/util/date_util.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/widget/error_view.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:video_player/video_player.dart';

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
            CalendarWidget(clientId),
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
      );
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

class ExpansionPanelListWidget extends StatefulWidget {
  final List<Exercise> exercises;
  final String clientId;

  const ExpansionPanelListWidget(
      {required this.exercises, required this.clientId});

  @override
  _ExpansionPanelListWidgetState createState() =>
      _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  List<String> listOfExpandedExercises = [];

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        animationDuration:
            Duration(seconds: Dimens.expansionPanelAnimationDuration),
        elevation: Dimens.expansionPanelElevation,
        expandedHeaderPadding: EdgeInsets.all(Dimens.noPadding),
        expansionCallback: (index, isExpanded) {
          setState(() {
            String id = widget.exercises[index].id;
            if (listOfExpandedExercises.contains(id)) {
              listOfExpandedExercises.remove(id);
            } else {
              listOfExpandedExercises.add(id);
            }
          });
        },
        children: widget.exercises
            .map((exercise) =>
                _buildExpansionPanel(exercise: exercise, context: context))
            .toList());
  }

  ExpansionPanel _buildExpansionPanel(
      {required Exercise exercise, required BuildContext context}) {
    return ExpansionPanel(
      isExpanded: listOfExpandedExercises.contains(exercise.id),
      canTapOnHeader: true,
      headerBuilder: (context, isExpanded) => _expansionPanelHeader(exercise),
      body: Column(
        children: [
          Divider(),
          _expansionPanelInfoRow(context: context, exercise: exercise),
          SizedBox(
            height: Dimens.videoContainerHeight,
            child: VideoItem(
              videoPlayerController:
                  VideoPlayerController.network(exercise.videoPath),
              looping: false,
              autoplay: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: Container(
              height: 24.0,
              child: Flex(direction: Axis.vertical, children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exercise.tags.length,
                    itemBuilder: (BuildContext context, int tagIndex) {
                      return Row(children: [
                        Text(
                          exercise.tags[tagIndex],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4)
                      ]);
                    },
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Row _expansionPanelInfoRow(
      {required BuildContext context, required Exercise exercise}) {
    String _initialSetsValue = exercise.sets.toString();
    String _initialRepsValue = exercise.reps.toString();
    var _setsController = TextEditingController(text: _initialSetsValue);
    var _repsController = TextEditingController(text: _initialRepsValue);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: Dimens.bigPadding),
            child: Text(AppLocalizations.of(context)!.expansion_panel_sets)),
        Padding(
          padding: const EdgeInsets.only(left: Dimens.bigPadding),
          child: SizedBox(
            width: Dimens.digitTextFieldWidth,
            child: TextField(
              decoration: InputDecoration(isDense: true),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textAlign: TextAlign.center,
              onChanged: (value) {
                context.read<CalendarExercisesBloc>().add(
                    CalendarExercisesSetsSubmit(
                        clientId: widget.clientId,
                        setsNumber: value,
                        selectedDate: _selectedDate,
                        exerciseId: exercise.id));
              },
              controller: _setsController,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: Dimens.bigPadding),
            child: Text(AppLocalizations.of(context)!.expansion_panel_reps)),
        Padding(
          padding: const EdgeInsets.only(left: Dimens.bigPadding),
          child: SizedBox(
            width: Dimens.digitTextFieldWidth,
            child: TextField(
              decoration: InputDecoration(isDense: true),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              onChanged: (value) {
                context.read<CalendarExercisesBloc>().add(
                    CalendarExercisesRepsSubmit(
                        clientId: widget.clientId,
                        repsNumber: value,
                        selectedDate: _selectedDate,
                        exerciseId: exercise.id));
              },
              controller: _repsController,
            ),
          ),
        ),
      ],
    );
  }

  ListTile _expansionPanelHeader(Exercise exercise) {
    return ListTile(
      leading: Icon(Icons.fitness_center),
      title: Text(
        exercise.title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CalendarWidget extends StatelessWidget {
  final String clientId;
  CalendarFormat _calendarFormat = CalendarFormat.week;
  List<bool> _list = <bool>[];

  CalendarWidget(this.clientId);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarExercisesBloc, CalendarExercisesState>(
      builder: (context, state) {
        return TableCalendar<bool>(
          firstDay: DateUtil.calendarStartDate,
          lastDay: DateUtil.calendarEndDate,
          focusedDay: _selectedDate,
          calendarFormat: getCalendarFormat(state),
          startingDayOfWeek: StartingDayOfWeek.monday,
          selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
          onDaySelected: (selectedDate, focusedDay) {
            context.read<CalendarExercisesBloc>().add(
                CalendarExercisesNewDateSelected(
                    selectedDate: selectedDate, clientId: clientId));
            _selectedDate = selectedDate;
          },
          onFormatChanged: (calendarFormat) => context
              .read<CalendarExercisesBloc>()
              .add(CalendarExercisesDateFormatChanged(calendarFormat)),
          eventLoader: (date) => _list,
        );
      },
    );
  }

  CalendarFormat getCalendarFormat(state) {
    return _calendarFormat;
    //   if (state is CalendarFormatChangeSuccess) {
    //     _calendarFormat = state.format;
    //     return _calendarFormat;
    //   } else {
    //     return _calendarFormat;
    //   }
  }
}
