import 'package:flutter/material.dart';

class TrainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: Image.asset('assets/images/fafcio_2.jpg'), //   <--- image
      ),
    );
  }
}
