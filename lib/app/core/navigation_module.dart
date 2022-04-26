import 'package:injectable/injectable.dart';
import 'package:personal_trainer/app/app_router.gr.dart';
import 'package:personal_trainer/app/core/auth_guard.dart';
import 'package:personal_trainer/app/core/get_it_config.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  AppRouter appRouter() => AppRouter(authGuard: getIt.get<AuthGuard>());
}