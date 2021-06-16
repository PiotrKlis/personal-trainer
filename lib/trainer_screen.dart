import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class TrainerScreen extends StatelessWidget {
  final List<String> entries = <String>[
    'Captain Jack Sparrow',
    'Adam Małysz',
    'Krystyna Czubówna'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trainer"),
      ),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrainerClientScreen(
                          index: index,
                        ),
                      ),
                    );
                  },
                  title: Text('${entries[index]}')));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Email email = Email(
            body:
                'This is an invitation to Personal Trainer app from ${'TrainerName'}. Click link to download the app',
            subject: 'Personal Trainer app invitation',
            recipients: ['example@example.com'],
            isHTML: false,
          );
          await FlutterEmailSender.send(email);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

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
