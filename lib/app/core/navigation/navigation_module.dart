import 'package:injectable/injectable.dart';
import 'package:personal_trainer/app/core/navigation/app_router.gr.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  AppRouter appRouter() => AppRouter();
}