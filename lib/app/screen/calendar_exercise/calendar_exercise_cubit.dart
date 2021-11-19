import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/calendar_exercise/calendar_exercise_event.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'calendar_exercise_state.dart';

class CalendarExerciseCubit
    extends Bloc<CalendarExerciseState, CalendarExerciseEvent> {
  final CalendarExerciseProvider _calendarExerciseProvider;

  CalendarExerciseCubit(CalendarExerciseEvent initialState, this._calendarExerciseProvider)
      : super(initialState);

  void onDaySelected(DateTime selectedDay, String userId) {
    _calendarExerciseProvider
        .getExerciseFor(selectedDay, userId)
        .then((listOfExercises) {
      emit(CalendarExerciseData(listOfExercises));
    });
  }

  void onFormatChanged(CalendarFormat format) {
    emit(CalendarFormatChanged(format));
  }

  void onBackFromSearchScreen() {
    //TODO: Migrate to Bloc from Cubit and handle Events properly
  }
}
