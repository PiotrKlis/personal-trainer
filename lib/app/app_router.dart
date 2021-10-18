import 'package:flutter/material.dart';
import 'package:personal_trainer/app/screen/account_choose_screen.dart';
import 'package:personal_trainer/app/screen/calendar_exercise_screen.dart';
import 'package:personal_trainer/app/screen/client_screen.dart';
import 'package:personal_trainer/app/screen/exercise_search_screen.dart';
import 'package:personal_trainer/app/screen/firebase_screen.dart';
import 'package:personal_trainer/app/screen/login_screen.dart';
import 'package:personal_trainer/app/screen/register_screen.dart';
import 'package:personal_trainer/app/screen/trainer_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/register':
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
      case '/trainer':
        return MaterialPageRoute(
          builder: (_) => TrainerScreen(),
        );
      case '/exercise_search':
        return MaterialPageRoute(
          builder: (_) => ExerciseSearchScreen(DateTime.now()),
        );
      case '/client':
        return MaterialPageRoute(
          builder: (_) => ClientScreen(),
        );
      case '/calendar_exercise':
        return MaterialPageRoute(
          builder: (_) => CalendarExerciseScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case '/chooseAccount':
        return MaterialPageRoute(
          builder: (_) => ChooseAccountScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => FirebaseLoadingScreen(),
        );
    }
  }
}
