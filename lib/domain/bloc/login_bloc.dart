import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_trainer/app/event/login_event.dart';
import 'package:personal_trainer/app/state/login_state.dart';
import 'package:personal_trainer/data/provider/login_provider.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginProvider loginProvider;

  LoginBloc(LoginState initialState, this.loginProvider) : super(initialState);

  @override
  Stream<LoginState> mapEventToState(LoginEvent loginEvent) async* {
    switch (loginEvent.runtimeType) {
      case UserLoginEvent:
        var event = loginEvent as UserLoginEvent;
        yield await loginProvider.loginUser(event.login, event.password);
        break;
      case UserAlreadyLoggedInEvent:
        var event = loginEvent as UserAlreadyLoggedInEvent;
        yield await loginProvider.loginUser(event.login, event.password);
        break;
    }
  }
}
