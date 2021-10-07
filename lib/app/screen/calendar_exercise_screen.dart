import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      body: ListView(
        children: [CalendarWidget(), Divider(), _listOfExercises()],
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

  Widget _listOfExercises() => ExpansionPanelList(
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

  ExpansionPanel _buildExpansionPanel(Exercise exercise) {
    var _setsController = TextEditingController(text: '1');
    var _repsController = TextEditingController(text: '8');
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text('Sets')),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: SizedBox(
                  width: 24,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    textAlign: TextAlign.center,
                    onSubmitted: (value) {
                      //TODO: Send sets value to remote
                    },
                    controller: _setsController,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text('Reps')),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: SizedBox(
                  width: 24,
                  child: TextField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onSubmitted: (value) {
                      //TODO: Send reps value to remote
                    },
                    controller: _repsController,
                  ),
                ),
              ),
            ],
          ),
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
