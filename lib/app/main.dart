import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/app_router.dart';
import 'package:personal_trainer/app/screen/firebase_loading/firebase_state.dart';
import 'package:personal_trainer/app/screen/login/login_state.dart';
import 'package:personal_trainer/data/provider/firebase_provider.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';
import 'screen/firebase_loading/firebase_cubit.dart';
import 'screen/login/login_cubit.dart';

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
                FirebaseCubit(FirebaseLoading(), firebaseProvider)),
        BlocProvider(
            create: (context) =>
                LoginCubit(LoginLoading(), loginProvider)),
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
