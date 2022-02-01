
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_add_exercise_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_event.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/widget/error_view.dart';
import 'package:personal_trainer/app/widget/toast_message.dart';
import 'package:personal_trainer/app/widget/video_player_widget.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

import 'exercise_search_state.dart';

class ExerciseSearchScreen extends StatelessWidget {
  final DateTime selectedDate;
  final String clientId;
  final int listLength;
  final ExerciseSearchState _exerciseSearchState =
      ExerciseSearchState.initial();

  ExerciseSearchScreen(
      {Key? key,
      required this.selectedDate,
      required this.clientId,
      required this.listLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ExerciseSearchBloc(_exerciseSearchState),
        child: Scaffold(
          appBar: AppBar(
              title: Text(
            AppLocalizations.of(context)!.search_exercises_screen_title,
          )),
          body: SearchScreenContent(
            selectedDate: selectedDate,
            clientId: clientId,
            listLength: listLength,
          ),
        ));
  }
}

class SearchScreenContent extends StatelessWidget {
  final selectedDate;
  final clientId;
  final listLength;

  const SearchScreenContent({this.selectedDate, this.clientId, this.listLength})
      : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // _addExerciseBlocListener(),
        SearchWidget(),
        ListOfResults(
          selectedDate: selectedDate,
          clientId: clientId,
        )
      ],
    );
  }
}

BlocListener _addExerciseBlocListener() {
  return BlocListener<ExerciseSearchAddExerciseBloc,
      ExerciseSearchAddExerciseState>(
    listener: (context, state) {
      switch (state.runtimeType) {
        case ExerciseSearchAddExerciseSuccess:
          state as ExerciseSearchAddExerciseSuccess;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: Duration(
                  milliseconds: DurationConst.snackbarVisibilityDuration),
              content: Text(
                  "${state.exerciseName} ${AppLocalizations.of(context)!.exercise_added_message}")));
          break;
        case ExerciseSearchAddExerciseFailure:
          state as ExerciseSearchAddExerciseFailure;
          ToastMessage.show(
              AppLocalizations.of(context)!.exercise_add_failure_message);
          break;
      }
    },
    child: Container(),
  );
}

var previousSearch;

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _searchController = TextEditingController();
    _searchController.addListener(() {
      if (_searchController.text != previousSearch) {
        previousSearch = _searchController.text;
        if (_searchController.text.isEmpty) {
          context
              .read<ExerciseSearchBloc>()
              .add(ExerciseSearchEvent.emptySearch());
        } else {
          context.read<ExerciseSearchBloc>().add(
              ExerciseSearchEvent.searchForInput(
                  input: _searchController.text));
        }
      }
    });
    return Row(children: [
      Padding(
          padding: const EdgeInsets.all(Dimens.biggerPadding),
          child: Icon(Icons.search)),
      Expanded(
        child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.search)),
      ),
    ]);
  }
}

class ListOfResults extends StatelessWidget {
  final selectedDate;
  final clientId;

  ListOfResults({required this.selectedDate, required this.clientId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseSearchBloc, ExerciseSearchState>(
        builder: (context, state) {
      return state.when(loading: () {
        return CircularProgressIndicator();
      }, initial: () {
        context
            .read<ExerciseSearchBloc>()
            .add(ExerciseSearchEvent.emptySearch());
        return CircularProgressIndicator();
      }, content: (exercises) {
        return _buildExpansionTiles(exercises, context);
      }, error: (error) {
        return ErrorView.error(AppLocalizations.of(context)!.error);
      });
    });
  }

  Center _handleNoExercises(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(Dimens.normalPadding),
            child: ErrorView.error(
                AppLocalizations.of(context)!.search_exercises_no_exercises)));
  }

  Widget _buildExpansionTiles(List<Exercise> exercises, BuildContext context) {
    if (exercises.isEmpty) {
      return _handleNoExercises(context);
    }
    return Expanded(
      child: ListView.builder(
          itemCount: exercises.length,
          itemBuilder: (context, index) =>
              _buildExpansionTile(exercises[index], context)),
    );
  }

  Widget _buildExpansionTile(Exercise exercise, BuildContext context) {
    return Card(
        elevation: 1,
        child: ExpansionTile(
            leading: Icon(Icons.fitness_center),
            title: Text(
              exercise.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: Icon(Icons.add_rounded),
              onPressed: () {
                context.read<ExerciseSearchAddExerciseBloc>().add(
                    ExerciseSearchExerciseAdded(
                        exerciseId: exercise.id,
                        selectedDate: selectedDate,
                        clientId: clientId,
                        exerciseName: exercise.title));
              },
            ),
            children: [
              Divider(),
              VideoPlayerWidget(playbackId: exercise.playbackId),
              Padding(
                  padding: const EdgeInsets.all(Dimens.smallPadding),
                  child: Container(
                      height: Dimens.tagsRowHeight,
                      child: Flex(direction: Axis.vertical, children: [
                        Expanded(
                            child: ListView.builder(
                          key: PageStorageKey(exercise.id),
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
                        ))
                      ])))
            ]));
  }

  bool isExpanded(Exercise exercise, List<String> listOfExpandedExercises) {
    return listOfExpandedExercises.contains(exercise.id);
  }
}
