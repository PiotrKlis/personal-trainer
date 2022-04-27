import 'package:injectable/injectable.dart';
import 'package:personal_trainer/app/core/auth_guard.dart';
import 'package:personal_trainer/app/core/dependency_injection/get_it_config.dart';
import 'package:personal_trainer/app/core/navigation/app_router.gr.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  AppRouter appRouter() => AppRouter(authGuard: getIt.get<AuthGuard>());
}