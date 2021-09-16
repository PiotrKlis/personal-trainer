import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/state/register_state.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/data/util/response.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterProvider registerProvider;

  RegisterCubit(RegisterState initialState, this.registerProvider)
      : super(initialState);

  void register(String userEmail, String name, String password,
      String trainerEmail, UserType? userType) async {
    switch (userType) {
      case UserType.TRAINER:
        var response =
            await registerProvider.registerTrainer(userEmail, name, password);
        if (response is Success) {
          emit(Registered());
        } else if (response is Failure) {
          emit(RegisterFailed(response.error));
        }
        break;
      case UserType.CLIENT:
        var response = await registerProvider.registerClient(
            userEmail, name, password, trainerEmail);
        if (response is Success) {
          emit(Registered());
        } else if (response is Failure) {
          emit(RegisterFailed(response.error));
        }
        break;
      default:
        emit(RegisterFailed('wrong userType'));
    }
  }
}
