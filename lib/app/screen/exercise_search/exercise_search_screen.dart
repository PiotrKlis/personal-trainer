import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personal_trainer/app/bloc/exercise_search_cubit.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/app/widget/error_message.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:video_player/video_player.dart';

import 'exercise_search_state.dart';

class ExerciseSearchScreen extends StatelessWidget {
  final DateTime selectedDay;
  final String clientId;

  final ExerciseSearchState _exerciseSearchState = InitialEmptySearch();
  final ExerciseSearchProvider _exerciseSearchProvider =
  ExerciseSearchProvider();

  ExerciseSearchScreen(
      {Key? key, required this.selectedDay, required this.clientId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            ExerciseSearchCubit(_exerciseSearchState, _exerciseSearchProvider),
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.search_exercises_screen_title,
              )),
          body: ListView(
            children: [
              SearchWidget(),
              ListOfResults(selectedDay: selectedDay, clientId: clientId,)
            ],
          ),
        ));
  }
}

class ListOfResults extends StatelessWidget {
  final selectedDay;
  final clientId;

  ListOfResults({required this.selectedDay, required this.clientId});

  List<String> listOfExpandedExercises = [];
  List<Exercise> listOfExercises = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExerciseSearchCubit, ExerciseSearchState>(
        listener: (context, state) {
          if (state is ExerciseAddedEvent) {
            ToastMessage.show("exercise added!");
          }
        },
        builder: (context, state) {
          if (state is SearchSuccess) {
            listOfExercises = state.exercises;
          } else if (state is InitialEmptySearch) {
            context.read<ExerciseSearchCubit>().getAllExercises();
          } else if (state is CardExpansionEvent) {
            listOfExpandedExercises = state.listOfExpandedExercises;
          }
          return ExpansionPanelList(
              animationDuration: Duration(seconds: 1),
              elevation: 4,
              expandedHeaderPadding: EdgeInsets.all(0),
              expansionCallback: (index, isExpanded) {
                context
                    .read<ExerciseSearchCubit>()
                    .expansionCallback(index, isExpanded);
              },
              children: listOfExercises
                  .map((exercise) =>
                  _buildExpansionPanel(
                      exercise, isExpanded(exercise, listOfExpandedExercises)))
                  .toList());
        });
  }

  bool isExpanded(Exercise exercise, List<String> listOfExpandedExercises) {
    return listOfExpandedExercises.contains(exercise.id);
  }

  ExpansionPanel _buildExpansionPanel(Exercise exercise, bool isExpanded) {
    void _onDeleteItemPressed() {}

    return ExpansionPanel(
      isExpanded: isExpanded,
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
                  size: 20.0,
                ),
                onTap: () {
                  context
                      .read<ExerciseSearchCubit>()
                      .addExercise(exerciseId: exercise.id,
                      selectedDay: selectedDay,
                      clientId: clientId);
                }));
      },
      body: Column(
        children: [
          Divider(),
          SizedBox(
            height: 240,
            child: VideoItem(
              videoPlayerController:
              VideoPlayerController.network(exercise.videoPath),
              looping: false,
              autoplay: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _searchController = TextEditingController();
    _searchController.addListener(() {
      Log.d("search controller text: ${_searchController.text}");
      if (_searchController.text.isEmpty) {
        context.read<ExerciseSearchCubit>().getAllExercises();
      } else {
        context
            .read<ExerciseSearchCubit>()
            .searchExercises(_searchController.text);
      }
    });
    return Row(children: [
      Padding(padding: const EdgeInsets.all(24.0), child: Icon(Icons.search)),
      Expanded(
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: "Search",
          ),
        ),
      ),
    ]);
  }
}

class ExerciseSearchArguments {
  final DateTime selectedDay;
  final String clientId;

  ExerciseSearchArguments(this.selectedDay, this.clientId);
}
