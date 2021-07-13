import 'package:flutter/material.dart';
import 'package:personal_trainer/screen/login_screen.dart';
import 'package:provider/provider.dart';

import 'application_state.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => ApplicationState(),
    builder: (context, _) => PersonalTrainerApp(),
  ));
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
        theme: ThemeData.light(),
        home: LoginScreen(),
      ),
    );
  }
}

enum ApplicationLoginState { LOGGED_IN, LOGGED_OUT }
