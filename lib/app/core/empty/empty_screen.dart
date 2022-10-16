import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/core/empty/empty_bloc.dart';
import 'package:personal_trainer/app/core/empty/empty_state.dart';

class EmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmptyScreenView();
    // return BlocProvider(
    //   create: (context) => EmptyBloc(EmptyState.init()),
    //   child: EmptyScreenView(),
    // );
  }
}

class EmptyScreenView extends StatelessWidget {
  const EmptyScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Empty Screen"),
    );
  }
}
