import 'package:auto_route/annotations.dart';
import 'package:personal_trainer/app/screen/account_choose/account_choose_screen.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_screen.dart';
import 'package:personal_trainer/app/screen/client/client_screen.dart';
import 'package:personal_trainer/app/screen/client_choose/client_choose_screen.dart';
import 'package:personal_trainer/app/screen/exercise_search/exercise_search_screen.dart';
import 'package:personal_trainer/app/screen/login/login_screen.dart';
import 'package:personal_trainer/app/screen/login/password_reset_screen.dart';
import 'package:personal_trainer/app/screen/register/register_screen.dart';
import 'package:personal_trainer/app/screen/trainer_search/trainer_search_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: TrainerSearchScreen, initial: true),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: RegisterScreen),
    AutoRoute(page: AccountChooseScreen),
    AutoRoute(page: ClientChooseScreen),
    AutoRoute(page: ClientScreen),
    AutoRoute(page: CalendarExercisesScreen),
    AutoRoute(page: ExerciseSearchScreen),
    AutoRoute(page: PasswordResetScreen),
  ],
)
class $AppRouter {}
