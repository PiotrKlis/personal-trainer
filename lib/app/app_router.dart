import 'package:flutter/material.dart';
import 'package:personal_trainer/app/screen/account_choose/account_choose_screen.dart';
import 'package:personal_trainer/app/screen/calendar_exercise/calendar_exercise_screen.dart';
import 'package:personal_trainer/app/screen/client_choose/client_choose_screen.dart';
import 'package:personal_trainer/app/screen/client/client_screen.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_screen.dart';
import 'package:personal_trainer/app/screen/firebase_loading/firebase_screen.dart';
import 'package:personal_trainer/app/screen/login/login_screen.dart';
import 'package:personal_trainer/app/screen/register/register_screen.dart';

class AppRouter {
  static const String REGISTER = "/register";
  static const String LOGIN = "/login";
  static const String CLIENT = "/client";
  static const String CHOOSE_CLIENT = "/choose_client";
  static const String EXERCISE_SEARCH = "/exercise_search";
  static const String CALENDAR_EXERCISE = "/calendar_exercise";
  static const String CHOOSE_ACCOUNT = "/choose_account";

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LOGIN:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case REGISTER:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
      case CHOOSE_ACCOUNT:
        final args = settings.arguments as AccountChooseArguments;
        return MaterialPageRoute(
          builder: (_) => AccountChooseScreen(
            trainerId: args.id,
          ),
        );
      case CHOOSE_CLIENT:
        final args = settings.arguments as ClientChooseArguments;
        return MaterialPageRoute(
          builder: (_) => ClientChooseScreen(trainerId: args.trainerId),
        );
      case CLIENT:
        final args = settings.arguments as ClientScreenArguments;
        return MaterialPageRoute(
          builder: (_) => ClientScreen(id: args.id),
        );
      case CALENDAR_EXERCISE:
        final args = settings.arguments as CalendarExerciseArguments;
        return MaterialPageRoute(
          builder: (_) => CalendarExerciseScreen(userId: args.userId),
        );
      case EXERCISE_SEARCH:
        //todo make exercise search work on firebase with correct id
        return MaterialPageRoute(
          builder: (_) => ExerciseSearchScreen(DateTime.now()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => FirebaseLoadingScreen(),
        );
    }
  }
}
