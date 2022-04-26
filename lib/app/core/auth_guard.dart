import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_trainer/app/app_router.gr.dart';
import 'package:personal_trainer/app/core/get_it_config.dart';
import 'package:personal_trainer/data/provider/auth_provider.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  final AuthProvider _authProvider = getIt.get<AuthProvider>();

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (_authProvider.isUserLoggedIn()) {
      String userId = await _authProvider.getUserId();
      UserType userType = await _authProvider.getUserType(userId);
      switch (userType) {
        case UserType.CLIENT:
          getIt.get<AppRouter>().push(AccountChooseRoute(trainerId: userId));
          break;
        case UserType.TRAINER:
          getIt.get<AppRouter>().push(ClientRoute());
          break;
      }
    } else {
      resolver.next(true);
    }
  }
}
