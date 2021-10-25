import 'package:flutter/material.dart';
import 'package:personal_trainer/app/screen/account_choose_screen.dart';
import 'package:personal_trainer/app/screen/calendar_exercise_screen.dart';
import 'package:personal_trainer/app/screen/client_choose_screen.dart';
import 'package:personal_trainer/app/screen/client_screen.dart';
import 'package:personal_trainer/app/screen/exercise_search_screen.dart';
import 'package:personal_trainer/app/screen/firebase_screen.dart';
import 'package:personal_trainer/app/screen/login_screen.dart';
import 'package:personal_trainer/app/screen/register_screen.dart';

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
      case REGISTER:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
      case CHOOSE_CLIENT:
        return MaterialPageRoute(
          builder: (_) => ClientChooseScreen(),
        );
      case EXERCISE_SEARCH:
        return MaterialPageRoute(
          builder: (_) => ExerciseSearchScreen(DateTime.now()),
        );
      case CLIENT:
        return MaterialPageRoute(
          builder: (_) => ClientScreen(),
        );
      case CALENDAR_EXERCISE:
        final args = settings.arguments as CalendarExerciseArguments;
        return MaterialPageRoute(
          builder: (_) => CalendarExerciseScreen(userId: args.userId),
        );
      case LOGIN:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case CHOOSE_ACCOUNT:
        return MaterialPageRoute(
          builder: (_) => AccountChooseScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => FirebaseLoadingScreen(),
        );
    }
  }
}
