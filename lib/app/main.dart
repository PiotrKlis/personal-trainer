import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/login_screen.dart';
import 'state/application_state.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => LoginState(),
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

