import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personal_trainer/app/app_router.gr.dart';
import 'package:personal_trainer/app/screen/calendar_exercises/calendar_exercises_arguments.dart';
import 'package:personal_trainer/app/screen/client_choose/client_choose_cubit.dart';
import 'package:personal_trainer/app/screen/client_choose/client_choose_state.dart';
import 'package:personal_trainer/app/widget/toast_message.dart';
import 'package:personal_trainer/domain/model/client.dart';
import '../../app_router.dart';

class ClientChooseScreen extends StatelessWidget {
  late final ClientChooseState _clientChooseState = ClientChooseLoading();
  final trainerId;
  List<Client> clients = <Client>[];

  ClientChooseScreen({Key? key, this.trainerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClientChooseCubit(_clientChooseState),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Choose client"),
        ),
        body: BlocBuilder<ClientChooseCubit, ClientChooseState>(
            builder: (BuildContext context, state) {
              if (state is ClientChooseLoading) {
                context.read<ClientChooseCubit>().getClientsData(trainerId);
              } else if (state is ClientsData) {
                clients = state.clients;
              } else if (state is ClientChooseFetchFailed) {
                ToastMessage.show(state.error);
              }
              return ListView.builder(
                itemCount: clients.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: ListTile(
                          onTap: () {
                            context.pushRoute(CalendarExercisesRoute(clientId: trainerId));

                          },
                          title: Text('${clients[index].name} / ${clients[index].email}')));
                },
              );
            }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EmailScreen()))
                .then((value) => value);
          },
          child: const Icon(Icons.add),
        ),
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
          fontSize: 16.0);
      Navigator.pop(context);
    }
  }
}

class ClientChooseArguments {
  final trainerId;

  ClientChooseArguments(this.trainerId);
}
