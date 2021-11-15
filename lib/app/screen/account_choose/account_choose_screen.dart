import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_trainer/app/screen/client_choose/client_choose_screen.dart';
import 'package:personal_trainer/app/screen/client/client_screen.dart';

import '../../app_router.dart';

class AccountChooseScreen extends StatelessWidget {
  final trainerId;

  const AccountChooseScreen({Key? key, this.trainerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose account')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Choose which account you would like to access?')),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouter.CHOOSE_CLIENT,
                          arguments: ClientChooseArguments(trainerId));
                    },
                    child: Text('TRAINER'))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouter.CLIENT,
                          arguments: ClientScreenArguments(trainerId));
                    },
                    child: Text('CLIENT'))),
          ],
        ),
      ),
    );
  }
}

class AccountChooseArguments {
  final id;

  AccountChooseArguments(this.id);
}
