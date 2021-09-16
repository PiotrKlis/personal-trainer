import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/app_router.dart';
import 'package:personal_trainer/app/state/firebase_state.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'bloc/firebase_cubit.dart';
import 'bloc/login_cubit.dart';

void main() {
  runApp(PersonalTrainerApp(
    firebaseProvider: FirebaseProvider(),
    loginProvider: LoginProvider(),
  ));
}

class PersonalTrainerApp extends StatelessWidget {
  final FirebaseProvider firebaseProvider;
  final LoginProvider loginProvider;

  const PersonalTrainerApp({
    Key? key,
    required this.firebaseProvider,
    required this.loginProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                LoginCubit(LoginLoading(), loginProvider)),
        BlocProvider(
            create: (context) =>
                FirebaseCubit(FirebaseLoading(), firebaseProvider)),
      ],
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          title: 'Personal Trainer',
          theme: ThemeData.light(),
          onGenerateRoute: AppRouter().onGenerateRoute,
        ),
      ),
    );
  }
}
