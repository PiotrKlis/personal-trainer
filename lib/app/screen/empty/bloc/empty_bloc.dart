import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/model/user_type.dart';
import 'package:personal_trainer/app/screen/empty/event/empty_event.dart';
import 'package:personal_trainer/app/screen/empty/state/empty_state.dart';
import 'package:personal_trainer/app/screen/register/event/register_event.dart';
import 'package:personal_trainer/app/screen/register/state/register_state.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';

class EmptyBloc extends Bloc<EmptyEvent, EmptyState> {
  final RegisterProvider registerProvider = GetIt.I.get<RegisterProvider>();

  EmptyBloc(EmptyState initialState) : super(initialState) {
    on<Init>((state, emit) async {

    });
  }
}
