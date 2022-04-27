import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:personal_trainer/app/core/dependency_injection/get_it_config.dart';
import 'package:personal_trainer/app/core/navigation/app_router.gr.dart';
import 'package:personal_trainer/app/util/localisation_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(PersonalTrainerApp());
}

class PersonalTrainerApp extends StatelessWidget {
  final AppRouter _router = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
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
