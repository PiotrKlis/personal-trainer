import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/event/register_event.dart';
import 'package:personal_trainer/app/state/register_state.dart';
import 'package:personal_trainer/data/provider/register_provider.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterProvider registerProvider;

  RegisterBloc(RegisterState initialState, this.registerProvider)
      : super(initialState);

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    switch (event.runtimeType) {
      case UserRegisterEvent:
        var userRegisterEvent = event as UserRegisterEvent;
        yield await registerProvider.registerUser(
          userRegisterEvent.userEmail,
          userRegisterEvent.name,
          userRegisterEvent.password,
          userRegisterEvent.trainerEmail,
          userRegisterEvent.userType
        );
    }
  }
}
