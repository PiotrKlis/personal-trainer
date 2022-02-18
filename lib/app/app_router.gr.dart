// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/cupertino.dart' as _i11;
import 'package:flutter/material.dart' as _i10;

import 'screen/account_choose/account_choose_screen.dart' as _i4;
import 'screen/calendar_exercises/calendar_exercises_screen.dart' as _i7;
import 'screen/client/client_screen.dart' as _i6;
import 'screen/client_choose/client_choose_screen.dart' as _i5;
import 'screen/exercise_search/exercise_search_screen.dart' as _i8;
import 'screen/login/login_screen.dart' as _i2;
import 'screen/register/register_screen.dart' as _i3;
import 'screen/splash/splash_screen.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen());
    },
    RegisterRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegisterScreen());
    },
    AccountChooseRoute.name: (routeData) {
      final args = routeData.argsAs<AccountChooseRouteArgs>(
          orElse: () => const AccountChooseRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.AccountChooseScreen(trainerId: args.trainerId));
    },
    ClientChooseRoute.name: (routeData) {
      final args = routeData.argsAs<ClientChooseRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i5.ClientChooseScreen(key: args.key, trainerId: args.trainerId));
    },
    ClientRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.ClientScreen());
    },
    CalendarExercisesRoute.name: (routeData) {
      final args = routeData.argsAs<CalendarExercisesRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.CalendarExercisesScreen(
              key: args.key, clientId: args.clientId));
    },
    ExerciseSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciseSearchRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ExerciseSearchScreen(
              key: args.key,
              selectedDate: args.selectedDate,
              clientId: args.clientId,
              listLength: args.listLength));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashRoute.name, path: '/'),
        _i9.RouteConfig(LoginRoute.name, path: '/login-screen'),
        _i9.RouteConfig(RegisterRoute.name, path: '/register-screen'),
        _i9.RouteConfig(AccountChooseRoute.name,
            path: '/account-choose-screen'),
        _i9.RouteConfig(ClientChooseRoute.name, path: '/client-choose-screen'),
        _i9.RouteConfig(ClientRoute.name, path: '/client-screen'),
        _i9.RouteConfig(CalendarExercisesRoute.name,
            path: '/calendar-exercises-screen'),
        _i9.RouteConfig(ExerciseSearchRoute.name,
            path: '/exercise-search-screen')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.RegisterScreen]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute() : super(name, path: '/register-screen');

  static const String name = 'RegisterRoute';
}

/// generated route for [_i4.AccountChooseScreen]
class AccountChooseRoute extends _i9.PageRouteInfo<AccountChooseRouteArgs> {
  AccountChooseRoute({dynamic trainerId})
      : super(name,
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

/// generated route for [_i5.ClientChooseScreen]
class ClientChooseRoute extends _i9.PageRouteInfo<ClientChooseRouteArgs> {
  ClientChooseRoute({_i11.Key? key, required String trainerId})
      : super(name,
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

/// generated route for [_i6.ClientScreen]
class ClientRoute extends _i9.PageRouteInfo<void> {
  const ClientRoute() : super(name, path: '/client-screen');

  static const String name = 'ClientRoute';
}

/// generated route for [_i7.CalendarExercisesScreen]
class CalendarExercisesRoute
    extends _i9.PageRouteInfo<CalendarExercisesRouteArgs> {
  CalendarExercisesRoute({_i11.Key? key, required String clientId})
      : super(name,
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

/// generated route for [_i8.ExerciseSearchScreen]
class ExerciseSearchRoute extends _i9.PageRouteInfo<ExerciseSearchRouteArgs> {
  ExerciseSearchRoute(
      {_i11.Key? key,
      required DateTime selectedDate,
      required String clientId,
      required int listLength})
      : super(name,
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
