import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:provider/src/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                    CalendarExercisesSetsSubmit(
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
                    CalendarExercisesRepsSubmit(
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