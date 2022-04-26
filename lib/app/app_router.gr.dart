// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import 'core/auth_guard.dart' as _i12;
import 'screen/account_choose/account_choose_screen.dart' as _i4;
import 'screen/calendar_exercises/calendar_exercises_screen.dart' as _i7;
import 'screen/client/client_screen.dart' as _i6;
import 'screen/client_choose/client_choose_screen.dart' as _i5;
import 'screen/exercise_search/exercise_search_screen.dart' as _i8;
import 'screen/login/login_screen.dart' as _i2;
import 'screen/login/password_reset_screen.dart' as _i9;
import 'screen/register/register_screen.dart' as _i3;
import 'screen/splash/splash_screen.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter(
      {_i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen());
    },
    RegisterRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegisterScreen());
    },
    AccountChooseRoute.name: (routeData) {
      final args = routeData.argsAs<AccountChooseRouteArgs>(
          orElse: () => const AccountChooseRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.AccountChooseScreen(trainerId: args.trainerId));
    },
    ClientChooseRoute.name: (routeData) {
      final args = routeData.argsAs<ClientChooseRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i5.ClientChooseScreen(key: args.key, trainerId: args.trainerId));
    },
    ClientRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.ClientScreen());
    },
    CalendarExercisesRoute.name: (routeData) {
      final args = routeData.argsAs<CalendarExercisesRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.CalendarExercisesScreen(
              key: args.key, clientId: args.clientId));
    },
    ExerciseSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciseSearchRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ExerciseSearchScreen(
              key: args.key,
              selectedDate: args.selectedDate,
              clientId: args.clientId,
              listLength: args.listLength));
    },
    PasswordResetRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PasswordResetScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/', guards: [authGuard]),
        _i10.RouteConfig(LoginRoute.name, path: '/login-screen'),
        _i10.RouteConfig(RegisterRoute.name, path: '/register-screen'),
        _i10.RouteConfig(AccountChooseRoute.name,
            path: '/account-choose-screen'),
        _i10.RouteConfig(ClientChooseRoute.name, path: '/client-choose-screen'),
        _i10.RouteConfig(ClientRoute.name, path: '/client-screen'),
        _i10.RouteConfig(CalendarExercisesRoute.name,
            path: '/calendar-exercises-screen'),
        _i10.RouteConfig(ExerciseSearchRoute.name,
            path: '/exercise-search-screen'),
        _i10.RouteConfig(PasswordResetRoute.name,
            path: '/password-reset-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register-screen');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.AccountChooseScreen]
class AccountChooseRoute extends _i10.PageRouteInfo<AccountChooseRouteArgs> {
  AccountChooseRoute({dynamic trainerId})
      : super(AccountChooseRoute.name,
            path: '/account-choose-screen',
            args: AccountChooseRouteArgs(trainerId: trainerId));

  static const String name = 'AccountChooseRoute';
}

class AccountChooseRouteArgs {
  const AccountChooseRouteArgs({this.trainerId});

  final dynamic trainerId;

  @override
  String toString() {
    return 'AccountChooseRouteArgs{trainerId: $trainerId}';
  }
}

/// generated route for
/// [_i5.ClientChooseScreen]
class ClientChooseRoute extends _i10.PageRouteInfo<ClientChooseRouteArgs> {
  ClientChooseRoute({_i11.Key? key, required String trainerId})
      : super(ClientChooseRoute.name,
            path: '/client-choose-screen',
            args: ClientChooseRouteArgs(key: key, trainerId: trainerId));

  static const String name = 'ClientChooseRoute';
}

class ClientChooseRouteArgs {
  const ClientChooseRouteArgs({this.key, required this.trainerId});

  final _i11.Key? key;

  final String trainerId;

  @override
  String toString() {
    return 'ClientChooseRouteArgs{key: $key, trainerId: $trainerId}';
  }
}

/// generated route for
/// [_i6.ClientScreen]
class ClientRoute extends _i10.PageRouteInfo<void> {
  const ClientRoute() : super(ClientRoute.name, path: '/client-screen');

  static const String name = 'ClientRoute';
}

/// generated route for
/// [_i7.CalendarExercisesScreen]
class CalendarExercisesRoute
    extends _i10.PageRouteInfo<CalendarExercisesRouteArgs> {
  CalendarExercisesRoute({_i11.Key? key, required String clientId})
      : super(CalendarExercisesRoute.name,
            path: '/calendar-exercises-screen',
            args: CalendarExercisesRouteArgs(key: key, clientId: clientId));

  static const String name = 'CalendarExercisesRoute';
}

class CalendarExercisesRouteArgs {
  const CalendarExercisesRouteArgs({this.key, required this.clientId});

  final _i11.Key? key;

  final String clientId;

  @override
  String toString() {
    return 'CalendarExercisesRouteArgs{key: $key, clientId: $clientId}';
  }
}

/// generated route for
/// [_i8.ExerciseSearchScreen]
class ExerciseSearchRoute extends _i10.PageRouteInfo<ExerciseSearchRouteArgs> {
  ExerciseSearchRoute(
      {_i11.Key? key,
      required DateTime selectedDate,
      required String clientId,
      required int listLength})
      : super(ExerciseSearchRoute.name,
            path: '/exercise-search-screen',
            args: ExerciseSearchRouteArgs(
                key: key,
                selectedDate: selectedDate,
                clientId: clientId,
                listLength: listLength));

  static const String name = 'ExerciseSearchRoute';
}

class ExerciseSearchRouteArgs {
  const ExerciseSearchRouteArgs(
      {this.key,
      required this.selectedDate,
      required this.clientId,
      required this.listLength});

  final _i11.Key? key;

  final DateTime selectedDate;

  final String clientId;

  final int listLength;

  @override
  String toString() {
    return 'ExerciseSearchRouteArgs{key: $key, selectedDate: $selectedDate, clientId: $clientId, listLength: $listLength}';
  }
}

/// generated route for
/// [_i9.PasswordResetScreen]
class PasswordResetRoute extends _i10.PageRouteInfo<void> {
  const PasswordResetRoute()
      : super(PasswordResetRoute.name, path: '/password-reset-screen');

  static const String name = 'PasswordResetRoute';
}
