import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/empty/bloc/empty_bloc.dart';
import 'package:personal_trainer/app/screen/empty/state/empty_state.dart';

class EmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmptyBloc(EmptyState.initial()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("empty screen"),
        ),
        body: EmptyScreenView(),
      ),
    );
  }
}

class EmptyScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
