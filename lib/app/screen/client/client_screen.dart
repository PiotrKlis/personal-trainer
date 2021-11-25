import 'package:flutter/material.dart';
import 'package:personal_trainer/app/util/example_exercises.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:video_player/video_player.dart';

class ClientScreen extends StatelessWidget {
  final List<Exercise> listOfExercises = ExampleExercises.list;
  final id;

  ClientScreen({this.id}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises Calendar'),
      ),
      //passing in the ListView.builder
      body: Column(
        children: [CalendarWidget(), Divider(), listOfCards()],
      ),
    );
  }

  Widget listOfCards() => Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listOfExercises.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.fitness_center),
                    title: Text(
                      listOfExercises[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: VideoItem(
                      videoPlayerController: VideoPlayerController.network(
                          listOfExercises[index].videoPath),
                      looping: false,
                      autoplay: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 24.0,
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listOfExercises[index].tags.length,
                          itemBuilder: (BuildContext context, int tagIndex) {
                            return Row(children: [
                              Text(
                                listOfExercises[index].tags[tagIndex],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4)
                            ]);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
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

class ClientScreenArguments {
  final id;

  ClientScreenArguments(this.id);
}
