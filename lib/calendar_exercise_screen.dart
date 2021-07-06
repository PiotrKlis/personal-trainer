import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:video_player/video_player.dart';

import 'VideoItem.dart';

class CalendarExerciseScreen extends StatefulWidget {
  final int index;

  CalendarExerciseScreen({Key? key, required this.index}) : super(key: key);

  @override
  _CalendarExerciseScreenState createState() => _CalendarExerciseScreenState();
}

class _CalendarExerciseScreenState extends State<CalendarExerciseScreen> {
  final videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      //passing in the ListView.builder
      body: Column(children: [
        CalendarWidget(),
        Divider(),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text('I am a title'),
              ),
              VideoItem(
                videoPlayerController: VideoPlayerController.network(
                    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
                ),
                looping: false,
                autoplay: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: const Text(
                        '#CARDIO',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: const Text(
                        '#STRENGTH',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ]),
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


