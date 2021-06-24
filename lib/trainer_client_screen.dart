import 'package:flutter/material.dart';

class TrainerClientScreen extends StatelessWidget {
  final int index;

  //requiring the list of todos
  TrainerClientScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
        ),
        //passing in the ListView.builder
        body: ListTile(title: Text('$index')));
  }
}
