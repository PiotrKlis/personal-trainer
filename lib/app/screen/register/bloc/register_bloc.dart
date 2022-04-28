import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/model/user_type.dart';
import 'package:personal_trainer/app/screen/register/event/register_event.dart';
import 'package:personal_trainer/app/screen/register/state/register_state.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterProvider registerProvider = GetIt.I.get<RegisterProvider>();

  RegisterBloc(RegisterState initialState) : super(initialState) {
    on<Register>((state, emit) async {
      emit(RegisterState.loading());
      try {
        switch (state.registerData.userType) {
          case UserType.TRAINER:
            await registerProvider.registerTrainerAndClient(
                registerData: state.registerData);
            emit(RegisterState.success());
            break;
          case UserType.CLIENT:
            await registerProvider.registerClient(
                registerData: state.registerData);
            emit(RegisterState.success());
            break;
        }
      } catch (error) {
        Log.e(error);
        String errorMessage = "Something went wrong";
        if (error is MessageException) {
          errorMessage = error.message;
        }
        if (error is FirebaseAuthException && error.code == 'network-request-failed') {
          errorMessage = "Network issue, check internet connection and try again";
        }
        emit(RegisterState.error(error: errorMessage));
      }
    });
  }
}
