import 'package:get_it/get_it.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/domain/mapper/exercise_mapper.dart';

abstract class DependencyInjector {
  void init();
}

class GetItInjector implements DependencyInjector {
  @override
  void init() {
    final getId = GetIt.instance;
    getId.registerLazySingleton<ExerciseMapper>(() => ExerciseMapper());
    getId.registerLazySingleton<CalendarExerciseProvider>(
        () => CalendarExerciseProvider());
    getId.registerLazySingleton<ExerciseSearchProvider>(
        () => ExerciseSearchProvider());
    getId.registerLazySingleton<FirebaseProvider>(() => FirebaseProvider());
    getId.registerLazySingleton<LoginProvider>(() => LoginProvider());
    getId.registerLazySingleton<RegisterProvider>(() => RegisterProvider());
  }
}
