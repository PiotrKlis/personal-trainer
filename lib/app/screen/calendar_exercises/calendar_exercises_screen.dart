import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/app/widget/calendar_widget.dart';
import 'package:personal_trainer/app/widget/error_view.dart';
import 'package:personal_trainer/app/widget/reordarable_expansion_tile_list_widget.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

import 'calendar_exercises_bloc.dart';
import 'calendar_exercises_event.dart';
import 'calendar_exercises_state.dart';

class CalendarExercisesScreen extends StatelessWidget {
  final String clientId;
  final CalendarExercisesState _initialState = CalendarExercisesState.started();

  CalendarExercisesScreen({Key? key, required this.clientId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CalendarExercisesBloc(_initialState),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              AppLocalizations.of(context)!.calendar_exercise_screen_title),
        ),
        body: Column(
          children: [
            CalendarWidget(clientId: clientId),
            Divider(),
            ExerciseExpansionPanels(clientId: clientId, key: UniqueKey())
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
      onPressed: () {
        context.read<CalendarExercisesBloc>().add(
            CalendarExerciseEvent.navigateToSearchScreen(clientId: clientId));
      },
      child: const Icon(Icons.add),
      backgroundColor: Colors.blue,
    );
  }
}

class ExerciseExpansionPanels extends StatefulWidget {
  final String clientId;

  const ExerciseExpansionPanels({required this.clientId, required Key? key})
      : super(key: key);

  @override
  State<ExerciseExpansionPanels> createState() =>
      _ExerciseExpansionPanelsState();
}

class _ExerciseExpansionPanelsState extends State<ExerciseExpansionPanels> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarExercisesBloc, CalendarExercisesState>(
        builder: (context, state) {
      return state.when(
          started: () => _handleInitialState(context),
          loading: () => Center(child: CircularProgressIndicator()),
          content: (userExercises) =>
              _handleDataLoadSuccess(userExercises, context),
          error: (error) {
            Log.e(error);
            return ErrorView.error(AppLocalizations.of(context)!.error);
          });
    });
  }

  Container _handleInitialState(BuildContext context) {
    context.read<CalendarExercisesBloc>().add(
        CalendarExerciseEvent.newDateSelected(
            selectedDate: DateTime.now(), clientId: widget.clientId));
    return Container();
  }

  Widget _handleDataLoadSuccess(
      List<UserExercise> userExercises, BuildContext context) {
    if (userExercises.isNotEmpty) {
      return ReorderableExpansionTileListWidgetState(
          userExercises: userExercises,
          clientId: widget.clientId);
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
