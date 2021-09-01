import 'package:flutter/material.dart';
import 'package:personal_trainer/app/screen/calendar_exercise_screen.dart';
import 'package:personal_trainer/app/screen/client_screen.dart';
import 'package:personal_trainer/app/screen/exercise_search_screen.dart';
import 'package:personal_trainer/app/screen/login_screen.dart';
import 'package:personal_trainer/app/screen/register_screen.dart';
import 'package:personal_trainer/app/screen/trainer_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      //LoginScreen
      case '/':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
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
          builder: (_) => ExerciseSearchScreen(),
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
      default:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
    }
  }
}
