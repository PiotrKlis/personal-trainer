import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/app_router.gr.dart';
import 'package:personal_trainer/app/util/dependency_injector.dart';
import 'package:personal_trainer/app/util/localisation_keys.dart';

void main() {
  DependencyInjector _injector = GetItInjector();
  _injector.init();
  runApp(PersonalTrainerApp());
}

class PersonalTrainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _router = GetIt.I<AppRouter>();
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp.router(
          routeInformationParser: _router.defaultRouteParser(),
          routerDelegate: _router.delegate(),
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
        ));
  }
}
