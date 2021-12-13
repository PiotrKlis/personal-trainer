import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../app_router.gr.dart';

class AutoRouteNavigator {

  // void init() {
  //   router = AutoRouter.of(context);
  // }

  Future navigateToExerciseSearch(
      {required DateTime selectedDate, required String clientId}) {
    // return router.push(
    //     ExerciseSearchRoute(selectedDate: selectedDate, clientId: clientId));
    return GetIt.I<AppRouter>().push(
        ExerciseSearchRoute(selectedDate: selectedDate, clientId: clientId));
  }
}
