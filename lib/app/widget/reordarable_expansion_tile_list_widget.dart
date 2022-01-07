import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';
import 'package:provider/src/provider.dart';

class ReorderableExpansionTileListWidget extends StatefulWidget {
  final List<UserExercise> userExercises;
  final String clientId;

  const ReorderableExpansionTileListWidget(
      {required this.userExercises, required this.clientId});

  @override
  _ReorderableExpansionTileListWidgetState createState() =>
      _ReorderableExpansionTileListWidgetState();
}

class _ReorderableExpansionTileListWidgetState
    extends State<ReorderableExpansionTileListWidget> {
  List<String> listOfExpandedExercises = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReorderableListView(
          children: widget.userExercises
              .map((userExercise) => _buildExpansionTile(
                  userExercise: userExercise, context: context))
              .toList(),
          onReorder: (oldIndex, newIndex) {
            context.read<CalendarExercisesBloc>().add(
                CalendarExerciseEvent.reorderExercises(
                    oldIndex: oldIndex,
                    newIndex: newIndex,
                    clientId: widget.clientId));
          }),
    );
  }

  Dismissible _buildExpansionTile(
      {required UserExercise userExercise, required BuildContext context}) {
    return Dismissible(
      background: Container(color: Colors.black),
      key: Key(userExercise.id),
      onDismissed: (direction) {
        context.read<CalendarExercisesBloc>().add(
            CalendarExerciseEvent.exerciseDeleted(
                userExerciseId: userExercise.id,
                clientId: widget.clientId,
                index: userExercise.index));
      },
      child: Card(
        elevation: 1,
        child: ExpansionTile(
          key: Key(userExercise.id),
          title: Text(
            userExercise.exercise.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          initiallyExpanded: listOfExpandedExercises.contains(userExercise.id),
          leading: Icon(Icons.fitness_center),
          children: [
            Divider(),
            _expansionPanelInfoRow(
                context: context, userExercise: userExercise),
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
                      itemCount: userExercise.exercise.tags.length,
                      itemBuilder: (BuildContext context, int tagIndex) {
                        return Row(children: [
                          Text(
                            userExercise.exercise.tags[tagIndex],
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
      ),
    );
  }

  Row _expansionPanelInfoRow(
      {required BuildContext context, required UserExercise userExercise}) {
    String _initialSetsValue = userExercise.sets.toString();
    String _initialRepsValue = userExercise.reps.toString();
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
                        userExerciseId: userExercise.id));
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
                        userExerciseId: userExercise.id));
              },
              controller: _repsController,
            ),
          ),
        ),
      ],
    );
  }
}
