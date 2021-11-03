import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/register/register_state.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/data/util/response.dart';
import 'package:personal_trainer/domain/model/register_data.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterProvider registerProvider;

  RegisterCubit(RegisterState initialState, this.registerProvider)
      : super(initialState);

  void register(RegisterData registerData) async {
    switch (registerData.userType) {
      case UserType.TRAINER:
        var response =
            await registerProvider.registerTrainerAndClient(registerData);
        if (response is Success) {
          emit(Registered());
        } else if (response is Failure) {
          emit(RegisterFailed(response.error));
        }
        break;
      case UserType.CLIENT:
        var response = await registerProvider.registerClient(
            registerData.email,
            registerData.displayName,
            registerData.password,
            registerData.trainerEmail);
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

  String getPasswordHintText(UserType? userType) {
    if (userType == UserType.TRAINER) {
      return "Trainer account password";
    } else {
      return "Password";
    }
  }

  void changeUserType() {
    emit(UserTypeChanged());
  }
}
