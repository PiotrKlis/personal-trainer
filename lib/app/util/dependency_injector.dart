import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/util/auto_route_navigator.dart';
import 'package:personal_trainer/data/provider/calendar_exercise_provider.dart';
import 'package:personal_trainer/data/provider/client_choose_provider.dart';
import 'package:personal_trainer/data/provider/exercise_search_provider.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/domain/mapper/client_mapper.dart';
import 'package:personal_trainer/domain/mapper/exercise_mapper.dart';

import '../app_router.gr.dart';

abstract class DependencyInjector {
  void init();
}

class GetItInjector implements DependencyInjector {
  @override
  Future<void> init() async {
    var _getIt = GetIt.instance;
    await _getIt.reset(dispose: true);
    _getIt.registerLazySingleton<ExerciseMapper>(() => ExerciseMapper());
    _getIt.registerLazySingleton<ClientMapper>(() => ClientMapper());
    _getIt.registerLazySingleton<CalendarExerciseProvider>(
        () => CalendarExerciseProvider());
    _getIt.registerLazySingleton<ExerciseSearchProvider>(
        () => ExerciseSearchProvider());
    _getIt.registerLazySingleton<FirebaseProvider>(() => FirebaseProvider());
    _getIt.registerLazySingleton<LoginProvider>(() => LoginProvider());
    _getIt.registerLazySingleton<RegisterProvider>(() => RegisterProvider());
    _getIt.registerLazySingleton<ClientChooseProvider>(
        () => ClientChooseProvider());
    _getIt.registerSingleton<AppRouter>(AppRouter());

    // _getIt.registerLazySingleton<AutoRouteNavigator>(
    //     () => AutoRouteNavigator(context));
  }
}
