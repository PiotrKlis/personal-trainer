import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/bloc/exercise_search_cubit.dart';
import 'package:personal_trainer/app/util/example_exercises.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:video_player/video_player.dart';

class ExerciseSearchScreen extends StatefulWidget {
  const ExerciseSearchScreen({Key? key}) : super(key: key);

  @override
  _ExerciseSearchScreenState createState() => _ExerciseSearchScreenState();
}

class _ExerciseSearchScreenState extends State<ExerciseSearchScreen> {
  List<String> listOfExpandedExercises = [];
  List<Exercise> listOfExercises = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        lazy: false,
        create: (context) =>
            ExerciseSearchCubit(
                ExerciseSearchState(), ExerciseSearchProvider()),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Search Exercises'),
          ),
          body: ListView(
            children: [SearchWidget(), _listOfResults()],
          ),
        ));
  }

  Widget _listOfResults() {
    return BlocBuilder<ExerciseSearchCubit, ExerciseSearchState>(
        builder: (context, state) {
          if (state is SearchSuccess) {
            listOfExercises = state.exercises;
          }
          return ExpansionPanelList(
              animationDuration: Duration(seconds: 1),
              elevation: 4,
              expandedHeaderPadding: EdgeInsets.all(0),
              expansionCallback: (index, isExpanded) {
                setState(() {
                  String id = listOfExercises[index].id;
                  if (listOfExpandedExercises.contains(id)) {
                    listOfExpandedExercises.remove(id);
                  } else {
                    listOfExpandedExercises.add(id);
                  }
                  print(listOfExpandedExercises.toString());
                });
              },
              children: listOfExercises
                  .map((exercise) =>
                  _buildExpansionPanel(
                      exercise, isExpanded(exercise, listOfExpandedExercises)))
                  .toList());
        });
  }
}

bool isExpanded(Exercise exercise, List<String> listOfExpandedExercises) {
  return listOfExpandedExercises.contains(exercise.id);
}

ExpansionPanel _buildExpansionPanel(Exercise exercise, bool isExpanded) {
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
      );
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

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _searchController = TextEditingController();
    _searchController.addListener(() {
      if (_searchController.text.isEmpty) {
        context
            .read<ExerciseSearchCubit>()
            .getAllExercises();
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
