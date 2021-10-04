import 'package:flutter/material.dart';
import 'package:personal_trainer/app/util/example_exercises.dart';
import 'package:personal_trainer/app/widget/error_toast.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:video_player/video_player.dart';

import 'exercise_search_screen.dart';

class CalendarExerciseScreen extends StatefulWidget {
  @override
  State<CalendarExerciseScreen> createState() => _CalendarExerciseScreenState();
}

class _CalendarExerciseScreenState extends State<CalendarExerciseScreen> {
  final List<Exercise> listOfExercises = ExampleExercises.list;

  List<String> listOfExpandedExercises = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan Exercises'),
      ),
      //passing in the ListView.builder
      body: ListView(
          children: [CalendarWidget(), Divider(), listOfCards()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ExerciseSearchScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget listOfCards() =>
      ExpansionPanelList(
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

  ExpansionPanel _buildExpansionPanel(Exercise exercise) {
    var _controller = TextEditingController(text: '1');
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
          trailing: SizedBox(
            height: 32,
            width: 32,
            //TODO migrate to TextFormField with validator
            child: TextField(
              onSubmitted: (value) {
                if (value is int) {
                  _controller.text = value;
                } else {
                  ErrorView.showErrorToast('Type correct number of series');
                }
              },
              controller: _controller,
            ),
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

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.week;
  List<bool> _list = <bool>[];

  @override
  Widget build(BuildContext context) {
    _list.add(true);

    return TableCalendar<bool>(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: _selectedDay,
      calendarFormat: _calendarFormat,
      startingDayOfWeek: StartingDayOfWeek.monday,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) => _onDaySelected(selectedDay),
      onFormatChanged: (format) => _onFormatChanged(format),
      eventLoader: (date) => _list,
    );
  }

  void _onFormatChanged(CalendarFormat format) {
    if (_calendarFormat != format) {
      setState(() {
        _calendarFormat = format;
      });
    }
  }

  void _onDaySelected(DateTime selectedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
      });
    }
  }
}
