import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:video_player/video_player.dart';

import 'VideoItem.dart';

class Exercise {
  final String title;
  final String videoPath;
  final List<String> tags;

  const Exercise(
      {required this.title, required this.videoPath, required this.tags});
}

class CalendarExerciseScreen extends StatefulWidget {
  final int index;

  CalendarExerciseScreen({Key? key, required this.index}) : super(key: key);

  @override
  _CalendarExerciseScreenState createState() => _CalendarExerciseScreenState();
}

class _CalendarExerciseScreenState extends State<CalendarExerciseScreen> {
  final List<Exercise> listOfExercises = <Exercise>[
    Exercise(
        title: 'Push press',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#CARDIO', '#STRENGTH','#CARDIO', '#STRENGTH','#CARDIO', '#STRENGTH','#CARDIO', '#STRENGTH',]),
    Exercise(
        title: 'Hollow',
        videoPath: 'https://youtu.be/m9xqO9kKqyk',
        tags: ['#STOMACH', '#DURABILITY']),
  ];
  final videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      //passing in the ListView.builder
      body: Column(
        children: [
          CalendarWidget(),
          Divider(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: listOfExercises.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.fitness_center),
                        title: Text(
                          listOfExercises[index].title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: VideoItem(
                          videoPlayerController: VideoPlayerController.network(
                              listOfExercises[index].videoPath),
                          looping: false,
                          autoplay: true,
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
                              itemBuilder:
                                  (BuildContext context, int tagIndex) {
                                return Row(children: [
                                  Text(
                                    listOfExercises[index].tags[tagIndex],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
  void initState() {
    super.initState();
  }

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
