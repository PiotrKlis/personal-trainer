import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:provider/src/provider.dart';

class ReordarableExpansionTileListWidget extends StatefulWidget {
  final List<Exercise> exercises;
  final String clientId;

  const ReordarableExpansionTileListWidget(
      {required this.exercises, required this.clientId});

  @override
  _ReordarableExpansionTileListWidgetState createState() =>
      _ReordarableExpansionTileListWidgetState();
}

class _ReordarableExpansionTileListWidgetState
    extends State<ReordarableExpansionTileListWidget> {
  List<String> listOfExpandedExercises = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReorderableListView(
          children: widget.exercises
              .map((exercise) =>
                  _buildExpansionTile(exercise: exercise, context: context))
              .toList(),
          onReorder: (old, newer) {
            //TODO: reorder stuff
          }),
    );
  }

  Dismissible _buildExpansionTile(
      {required Exercise exercise, required BuildContext context}) {
    return Dismissible(
      background: Container(color: Colors.red),
      key: Key(exercise.userExerciseId),
      onDismissed: (direction) {
        context.read<CalendarExercisesBloc>().add(
            CalendarExerciseEvent.exerciseDeleted(
                userExerciseId: exercise.userExerciseId,
                clientId: widget.clientId));
      },
      child: ExpansionTile(
        key: Key(exercise.userExerciseId),
        title: Text(
          exercise.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        initiallyExpanded:
            listOfExpandedExercises.contains(exercise.userExerciseId),
        leading: Icon(Icons.fitness_center),
        children: [
          Divider(),
          _expansionPanelInfoRow(context: context, exercise: exercise),
          SizedBox(
            height: Dimens.videoContainerHeight,
            // child: VideoItem(
            //   videoPlayerController:
            //       VideoPlayerController.network(exercise.videoPath),
            //   looping: false,
            //   autoplay: false,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.smallPadding),
            child: Container(
              height: Dimens.tagsRowHeight,
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
                        SizedBox(width: Dimens.tagsRowDividerWidth)
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
                    CalendarExerciseEvent.setsSubmit(
                        clientId: widget.clientId,
                        setsNumber: value,
                        userExerciseId: exercise.userExerciseId));
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
                    CalendarExerciseEvent.repsSubmit(
                        clientId: widget.clientId,
                        repsNumber: value,
                        userExerciseId: exercise.userExerciseId));
              },
              controller: _repsController,
            ),
          ),
        ),
      ],
    );
  }
}
