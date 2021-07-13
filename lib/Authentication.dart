import 'package:flutter/material.dart';
import 'package:personal_trainer/application_state.dart';
import 'package:personal_trainer/screen/register_screen.dart';

class Authentication extends StatelessWidget {
  const Authentication({

});

  final ApplicationState loginState;
  final String? userEmail;
  final String? password;
  final String? name;
  final String? trainerEmail;
  final void Function(String name, String userEmail, String password, UserType userType, String? trainerEmail) register;
  final void Function() logIn;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
