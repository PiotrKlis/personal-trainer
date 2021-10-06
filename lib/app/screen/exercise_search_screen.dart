import 'package:flutter/material.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Exercises'),
      ),
      body: Column(
        children: [
          _searchView(),
          // _listOfResults()
        ],
      ),
    );
  }

  Widget _searchView() {
    var _searchController = TextEditingController();
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

  Widget _listOfResults() {
    return ExpansionPanelList(
        animationDuration: Duration(seconds: 1),
        elevation: 4.0,
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
            .map((exercise) => _buildExpansionPanel(exercise))
            .toList());
  }

  ExpansionPanel _buildExpansionPanel(Exercise exercise) {
    return ExpansionPanel(
      isExpanded: listOfExpandedExercises.contains(exercise.id),
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
}
