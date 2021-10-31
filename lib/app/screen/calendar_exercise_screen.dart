import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/widget/video_item.dart';
import 'package:personal_trainer/domain/model/exercise.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:video_player/video_player.dart';

import 'exercise_search_screen.dart';

DateTime _selectedDay = DateTime.now();

class CalendarExerciseScreen extends StatelessWidget {
  final userId;

  CalendarExerciseScreen({Key? key, this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CalendarExerciseCubit(Loading()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Plan Exercises'),
        ),
        body: ListView(
          children: [CalendarWidget(), Divider(), ExerciseCards()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExerciseSearchScreen(_selectedDay)));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class ExerciseCards extends StatelessWidget {
  ExerciseCards({Key? key}) : super(key: key);

  List<Exercise> _listOfExercises = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarExerciseCubit, CalendarExerciseState>(
        builder: (context, state) {
      return ExpansionPanelList(
          animationDuration: Duration(seconds: 1),
          elevation: 4,
          expandedHeaderPadding: EdgeInsets.all(0),
          expansionCallback: (index, isExpanded) {
            //todo migrate to cubit event
            // setState(() {
            //   String id = listOfExercises[index].id;
            //   if (_listOfExpandedExercises.contains(id)) {
            //     _listOfExpandedExercises.remove(id);
            //   } else {
            //     _listOfExpandedExercises.add(id);
            //   }
            //   print(_listOfExpandedExercises.toString());
            // });
          },
          children: _listOfExercises
              .map((exercise) => _buildExpansionPanel(exercise))
              .toList());
    });
  }

  ExpansionPanel _buildExpansionPanel(Exercise exercise) {
    var _setsController = TextEditingController(text: '1');
    var _repsController = TextEditingController(text: '8');
    return ExpansionPanel(
      isExpanded: false,
      //todo move to cubit
      // isExpanded: _listOfExpandedExercises.contains(exercise.id),
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

class CalendarExerciseCubit extends Cubit<CalendarExerciseState> {
  final CalendarExerciseProvider _calendarExerciseProvider;

  CalendarExerciseCubit(CalendarExerciseProvider calendarExerciseProvider,
      CalendarExerciseState initialState, this._calendarExerciseProvider)
      : super(initialState);

  void onDaySelected(DateTime selectedDay) {
    _calendarExerciseProvider.getExerciseFor(selectedDay);
  }
}

class CalendarExerciseProvider {
  void getExerciseFor(DateTime selectedDay) {
    
  }
}

abstract class CalendarExerciseState {}

class Loading extends CalendarExerciseState {}

class CalendarWidget extends StatelessWidget {
  CalendarWidget({Key? key}) : super(key: key);

  CalendarFormat _calendarFormat = CalendarFormat.week;
  List<bool> _list = <bool>[];

  @override
  Widget build(BuildContext context) {
    _list.add(true);

    return TableCalendar<bool>(
      firstDay: DateTime.utc(2021, 09, 01),
      lastDay: DateTime.utc(2022, 12, 31),
      focusedDay: _selectedDay,
      calendarFormat: _calendarFormat,
      startingDayOfWeek: StartingDayOfWeek.monday,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) =>
          context.read<CalendarExerciseCubit>().onDaySelected(selectedDay),
      onFormatChanged: (format) => _onFormatChanged(format),
      eventLoader: (date) => _list,
    );
  }

  void _onFormatChanged(CalendarFormat format) {
    if (_calendarFormat != format) {
      // todo migrate to cubit
      // setState(() {
      //   _calendarFormat = format;
      // });
    }
  }

  void _onDaySelected(DateTime selectedDay) {
    if (!isSameDay(selectedDay, selectedDay)) {
      //todo migrate to cubit
      // setState(() {
      //   selectedDay = selectedDay;
      // });
    }
  }
}

class CalendarExerciseArguments {
  final String userId;

  CalendarExerciseArguments(this.userId);
}
