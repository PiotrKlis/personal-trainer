import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'calendar_exercise_state.dart';

class CalendarExerciseCubit extends Cubit<CalendarExerciseState> {
  final CalendarExerciseProvider _calendarExerciseProvider;

  CalendarExerciseCubit(
      CalendarExerciseState initialState, this._calendarExerciseProvider)
      : super(initialState);

  void onDaySelected(DateTime selectedDay, String userId) {
    _calendarExerciseProvider
        .getExerciseFor(selectedDay = selectedDay, userId = userId)
        .then((listOfExercises) => emit(CalendarExerciseData(listOfExercises)));
  }

  onFormatChanged(CalendarFormat format) {
    emit(CalendarFormatChanged(format));
  }
}
