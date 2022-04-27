import 'package:flutter/material.dart';
import 'package:personal_trainer/app/core/dependency_injection/get_it_config.dart';
import 'package:personal_trainer/app/core/navigation/app_router.gr.dart';

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
                      getIt
                          .get<AppRouter>()
                          .push(ClientChooseRoute(trainerId: trainerId));
                    },
                    child: Text('TRAINER'))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      getIt.get<AppRouter>().push(ClientRoute());
                    },
                    child: Text('CLIENT'))),
          ],
        ),
      ),
    );
  }
}
