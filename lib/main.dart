import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:personal_trainer/app/app_router.dart';
import 'package:personal_trainer/app/util/localisation_keys.dart';

void main() {
  runApp(PersonalTrainerApp());
}

class PersonalTrainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
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
        onGenerateRoute: AppRouter().onGenerateRoute,
      ),
    );
  }
}
