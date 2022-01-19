import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_event.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/app/widget/video_player_state.dart';
import 'package:personal_trainer/data/mux/mux_strings.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';
import 'package:provider/src/provider.dart';
import 'package:video_player/video_player.dart';

class ReorderableExpansionTileListWidgetState extends StatefulWidget {
  final String clientId;
  final List<UserExercise> userExercises;

  const ReorderableExpansionTileListWidgetState(
      {Key? key, required this.clientId, required this.userExercises})
      : super(key: key);

  @override
  State<ReorderableExpansionTileListWidgetState> createState() =>
      _ReorderableExpansionTileListWidgetStateState();
}

class _ReorderableExpansionTileListWidgetStateState
    extends State<ReorderableExpansionTileListWidgetState> {
  List<String> listOfExpandedExercises = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReorderableListView(
          children: widget.userExercises
              .map((userExercise) => _buildExpansionTile(
                  userExercise: userExercise,
                  context: context,
                  clientId: widget.clientId))
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
      {required UserExercise userExercise,
      required BuildContext context,
      required String clientId}) {
    // VideoPlayerController _videoPlayerController =
    //     initVideoPlayerController(userExercise);

    return Dismissible(
      background: Container(color: Colors.black),
      key: PageStorageKey(UniqueKey()),
      onDismissed: (direction) {
        context.read<CalendarExercisesBloc>().add(
            CalendarExerciseEvent.exerciseDeleted(
                userExerciseId: userExercise.id,
                clientId: clientId,
                index: userExercise.index));
      },
      child: Card(
        elevation: 1,
        child: ExpansionTile(
          initiallyExpanded: listOfExpandedExercises.contains(userExercise.id),
          onExpansionChanged: (value) {
            value
                ? listOfExpandedExercises.add(userExercise.id)
                : listOfExpandedExercises.remove(userExercise.id);
          },
          leading: Icon(Icons.fitness_center),
          title: Text(
            userExercise.exercise.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          children: [
            Divider(),
            _expansionPanelInfoRow(
                context: context,
                userExercise: userExercise,
                clientId: clientId),
            VideoPlayerWidget(playbackId: userExercise.exercise.playbackId),
            Padding(
              padding: const EdgeInsets.all(Dimens.smallPadding),
              child: Container(
                height: Dimens.tagsRowHeight,
                child: Flex(direction: Axis.vertical, children: [
                  Expanded(
                    child: ListView.builder(
                      key: PageStorageKey(userExercise.id),
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
      {required BuildContext context,
      required UserExercise userExercise,
      required String clientId}) {
    String _initialSetsValue = userExercise.sets.toString();
    String _initialRepsValue = userExercise.reps.toString();
    var _setsController = TextEditingController(text: _initialSetsValue);
    var _repsController = TextEditingController(text: _initialRepsValue);
    return Row(
      key: PageStorageKey(userExercise.id),
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
                        clientId: clientId,
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
                        clientId: clientId,
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
