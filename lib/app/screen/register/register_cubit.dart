import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/screen/register/register_state.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';
import 'package:personal_trainer/domain/model/register_data.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterProvider registerProvider;

  RegisterCubit(RegisterState initialState, this.registerProvider)
      : super(initialState);

  void register(RegisterData registerData) async {
    switch (registerData.userType) {
      case UserType.TRAINER:
        registerProvider
            .registerTrainerAndClient(registerData)
            .then((_) => emit(Registered()))
            .catchError((error) {
          emit(RegisterFailed(error));
        });

        break;
      case UserType.CLIENT:
        registerProvider
            .registerClient(registerData.email, registerData.displayName,
                registerData.password, registerData.trainerEmail)
            .then((_) => emit(Registered()))
            .catchError((error) {
          emit(RegisterFailed(error));
        });
        break;
      default:
        emit(RegisterFailed('Wrong userType'));
    }
  }

  void changeUserType() {
    emit(UserTypeChanged());
  }
}
