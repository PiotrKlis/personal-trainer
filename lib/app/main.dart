import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:personal_trainer/app/app_router.dart';
import 'package:personal_trainer/app/util/localisation_keys.dart';

void main() {
  try {
    runApp(PersonalTrainerApp());
  } catch (error) {
    print(error.toString());
  }
}

class PersonalTrainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: AppLocalizations.of(context)!.app_title,
        localizationsDelegates: [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale(LocalisationKeys.englishLocaleKey),
          Locale(LocalisationKeys.polishLocaleKey),
        ],
        theme: ThemeData.light(),
        onGenerateRoute: AppRouter().onGenerateRoute,
      ),
    );
  }
}
