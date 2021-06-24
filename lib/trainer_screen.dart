import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:personal_trainer/trainer_client_screen.dart';

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
                        builder: (context) =>
                            TrainerClientScreen(
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EmailScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sendEmail(context);
    return Container();
  }

  void sendEmail(BuildContext context) async {
    final Email email = Email(
      body:
      'This is an invitation to Personal Trainer app from ${'TrainerName'}. Click link to download the app',
      subject: 'Personal Trainer app invitation',
      recipients: ['example@example.com'],
      isHTML: false,
    );
    try {
      await FlutterEmailSender.send(email);
    } catch (error) {
      Navigator.pop(context);
    }
  }
}
