import 'package:flutter/material.dart';

class TrainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Trainer"),
        ),
        body: Column(
          children: [
            Image.asset('assets/images/fafcio_2.jpg'),
            Text('I am powerful trainer screen')
          ],
        ),
      ),
    );
  }
}
