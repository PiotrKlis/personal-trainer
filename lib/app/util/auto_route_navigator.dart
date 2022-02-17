import 'package:get_it/get_it.dart';

import '../app_router.gr.dart';

class AutoRouteNavigator {
  Future navigateToExerciseSearch(
      {required DateTime selectedDate,
      required String clientId,
      required int listLength}) {
    return GetIt.I<AppRouter>().push(ExerciseSearchRoute(
        selectedDate: selectedDate,
        clientId: clientId,
        listLength: listLength));
  }

  Future navigateToClientScreen() =>
      GetIt.I<AppRouter>().replace(ClientRoute());

  Future navigateToChooseAccountScreen() =>
      GetIt.I<AppRouter>().push(AccountChooseRoute());

  Future navigateToLoginScreen() => GetIt.I<AppRouter>().replace(LoginRoute());

  Future navigateToRegister() => GetIt.I<AppRouter>().replace(RegisterRoute());
}
