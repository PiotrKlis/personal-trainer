import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'calendar_exercise_screen.dart';

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
                            CalendarExerciseScreen(
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
              context, MaterialPageRoute(builder: (context) => EmailScreen())).then((value) => value);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    sendEmail(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Client invitation'),
      ),
      body: Container(),
    );
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
      String? message = (error as PlatformException).message;
      if (message == null) message = 'Something went wrong';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      Navigator.pop(context);
    }
  }
}
