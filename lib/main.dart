import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/app_router.dart';
import 'package:personal_trainer/app/app_router.gr.dart';
import 'package:personal_trainer/app/util/dependency_injector.dart';
import 'package:personal_trainer/app/util/localisation_keys.dart';

void main() {
  runApp(PersonalTrainerApp());
}

class PersonalTrainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initDependencyInjection();
    final _appRouter = AppRouter();

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp.router(
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
        title: 'Personal Trainer',
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale(LocalisationKeys.englishLocaleKey),
          Locale(LocalisationKeys.polishLocaleKey),
        ],
        theme: ThemeData.dark(),
      )
    );
  }

  void initDependencyInjection() {
    DependencyInjector _injector = GetItInjector();
    _injector.init();
  }
}
