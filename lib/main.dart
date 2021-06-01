import 'package:flutter/material.dart';
import 'package:personal_trainer/register_screen.dart';

import 'login_screen.dart';

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
        theme: ThemeData.light(),
        home: LoginScreen(),
      ),
    );
  }
}
