import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/app/screen/register/event/register_event.dart';
import 'package:personal_trainer/app/screen/register/state/register_state.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/domain/model/register_data.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterProvider registerProvider = GetIt.I.get<RegisterProvider>();

  RegisterBloc(RegisterState initialState) : super(initialState) {
    on<Register>((state, emit) async {
      switch (state.registerData.userType) {
        case UserType.TRAINER:
          try {
            await registerProvider.registerTrainerAndClient(state.registerData);
            emit(RegisterState.success());
          } catch (error) {
            emit(RegisterState.error(error: error.toString()));
          }
          break;
        case UserType.CLIENT:
          try {
            registerProvider.registerClient(
                state.registerData.email,
                state.registerData.displayName,
                state.registerData.password,
                state.registerData.trainerEmail);
          } catch (error) {
            emit(RegisterState.error(error: error.toString()));
          }
          break;
      }
    });
  }
}
