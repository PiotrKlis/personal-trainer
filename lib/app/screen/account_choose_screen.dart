import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose account')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Choose which account you would like to access')),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {  },
              child: Text('Choose which account you would like to access'))),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {  },
              child: Text('Choose which account you would like to access'))),


        ],
      ),
    );
  }
}
