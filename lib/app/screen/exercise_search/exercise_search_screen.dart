import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_add_exercise_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_event.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/app/widget/error_view.dart';
import 'package:personal_trainer/app/widget/toast_message.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:video_player/video_player.dart';

import 'exercise_search_state.dart';

class ExerciseSearchScreen extends StatelessWidget {
  final DateTime selectedDate;
  final String clientId;
  final ExerciseSearchState _exerciseSearchState = ExerciseSearchAllExercises();
  final ExerciseSearchAddExerciseState _addExerciseState =
      ExerciseSearchAddStarted();

  ExerciseSearchScreen(
      {Key? key, required this.selectedDate, required this.clientId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => ExerciseSearchBloc(_exerciseSearchState)),
          BlocProvider(
              create: (context) => ExerciseSearchAddExerciseBloc(_addExerciseState))
        ],
        child: Scaffold(
          appBar: AppBar(
              title: Text(
            AppLocalizations.of(context)!.search_exercises_screen_title,
          )),
          body: SearchScreenContent(
            selectedDate: selectedDate,
            clientId: clientId,
          ),
        ));
  }
}

class SearchScreenContent extends StatelessWidget {
  final selectedDate;
  final clientId;

  const SearchScreenContent({this.selectedDate, this.clientId}) : super();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _addExerciseBlocListener(),
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
          ToastMessage.show(
              "${state.exerciseName} ${AppLocalizations.of(context)!.exercise_added_message}");
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

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _searchController = TextEditingController();
    _searchController.addListener(() {
      Log.d("search controller text: ${_searchController.text}");
      if (_searchController.text.isEmpty) {
        context.read<ExerciseSearchBloc>().add(ExerciseSearchEmpty());
      } else {
        context
            .read<ExerciseSearchBloc>()
            .add(ExerciseSearchForInput(input: _searchController.text));
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
      switch (state.runtimeType) {
        case ExerciseSearchAllExercises:
          return _handleSearchAllExercises(context);
        case ExerciseSearchSuccess:
          state as ExerciseSearchSuccess;
          return _handleDataLoadSuccess(state.exercises, context);
        case ExerciseSearchExpansionPanelClickSuccess:
          state as ExerciseSearchExpansionPanelClickSuccess;
          return _handleDataLoadSuccess(state.exercises, context);
        default:
          return _handleNoExercises(context);
      }
    });
  }

  Center _handleNoExercises(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(Dimens.normalPadding),
            child: ErrorView.error(
                AppLocalizations.of(context)!.search_exercises_no_exercises)));
  }

  ExpansionPanelList _handleDataLoadSuccess(
      List<Exercise> exercises, BuildContext context) {
    return ExpansionPanelList(
        animationDuration:
            Duration(seconds: Dimens.expansionPanelAnimationDuration),
        elevation: Dimens.expansionPanelElevation,
        expandedHeaderPadding: EdgeInsets.all(Dimens.noPadding),
        expansionCallback: (index, isExpanded) {
          context.read<ExerciseSearchBloc>().add(
              ExerciseSearchExpansionPanelClicked(
                  exerciseId: exercises[index].id, exercises: exercises));
        },
        children: exercises
            .map((exercise) => _buildExpansionPanel(exercise, context))
            .toList());
  }

  ExpansionPanel _buildExpansionPanel(Exercise exercise, BuildContext context) {
    return ExpansionPanel(
      isExpanded: context
          .read<ExerciseSearchBloc>()
          .listOfExpandedExercises
          .contains(exercise.id),
      canTapOnHeader: true,
      headerBuilder: (context, isExpanded) {
        return ListTile(
            leading: Icon(Icons.fitness_center),
            title: Text(
              exercise.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: GestureDetector(
                child: Icon(
                  Icons.add_rounded,
                  size: Dimens.iconRoundSize,
                ),
                onTap: () {
                  context.read<ExerciseSearchAddExerciseBloc>().add(
                      ExerciseSearchExerciseAdded(
                          exerciseId: exercise.id,
                          selectedDate: selectedDate,
                          clientId: clientId,
                          exerciseName: exercise.title));
                }));
      },
      body: Column(
        children: [
          Divider(),
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

  bool isExpanded(Exercise exercise, List<String> listOfExpandedExercises) {
    return listOfExpandedExercises.contains(exercise.id);
  }

  Center _handleSearchAllExercises(BuildContext context) {
    context.read<ExerciseSearchBloc>().add(ExerciseSearchEmpty());
    return Center(child: CircularProgressIndicator());
  }
}

class ExerciseSearchArguments {
  final DateTime selectedDay;
  final String clientId;

  ExerciseSearchArguments(this.selectedDay, this.clientId);
}
