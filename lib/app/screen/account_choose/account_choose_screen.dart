import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_router.gr.dart';

class AccountChooseScreen extends StatelessWidget {
  final trainerId;

  const AccountChooseScreen({this.trainerId}) : super();

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
                      context
                          .pushRoute(ClientChooseRoute(trainerId: trainerId));
                    },
                    child: Text('TRAINER'))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.replaceRoute(ClientRoute(id: trainerId));
                    },
                    child: Text('CLIENT'))),
          ],
        ),
      ),
    );
  }
}
