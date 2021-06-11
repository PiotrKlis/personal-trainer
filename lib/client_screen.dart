import 'package:flutter/material.dart';

class ClientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Client')
        ),
        body: Column(
          children: [
            Image.asset('assets/images/fafcio.jpg'),
            Text('I am powerful client screen')
          ],
        ),
      ),
    );
  }
}