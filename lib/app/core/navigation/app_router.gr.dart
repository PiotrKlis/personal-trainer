// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../screen/account_choose/account_choose_screen.dart' as _i4;
import '../../screen/calendar_exercises/calendar_exercises_screen.dart' as _i7;
import '../../screen/client/client_screen.dart' as _i6;
import '../../screen/client_choose/client_choose_screen.dart' as _i5;
import '../../screen/exercise_search/exercise_search_screen.dart' as _i8;
import '../../screen/filter_search/search_filter_screen.dart' as _i10;
import '../../screen/login/login_screen.dart' as _i2;
import '../../screen/login/password_reset_screen.dart' as _i9;
import '../../screen/register/register_screen.dart' as _i3;
import '../../screen/trainer_search/trainer_search_screen.dart' as _i1;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    TrainerSearchRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.TrainerSearchScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.RegisterScreen(),
      );
    },
    AccountChooseRoute.name: (routeData) {
      final args = routeData.argsAs<AccountChooseRouteArgs>(
          orElse: () => const AccountChooseRouteArgs());
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.AccountChooseScreen(trainerId: args.trainerId),
      );
    },
    ClientChooseRoute.name: (routeData) {
      final args = routeData.argsAs<ClientChooseRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ClientChooseScreen(
          key: args.key,
          trainerId: args.trainerId,
        ),
      );
    },
    ClientRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ClientScreen(),
      );
    },
    CalendarExercisesRoute.name: (routeData) {
      final args = routeData.argsAs<CalendarExercisesRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.CalendarExercisesScreen(
          key: args.key,
          clientId: args.clientId,
        ),
      );
    },
    ExerciseSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciseSearchRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ExerciseSearchScreen(
          key: args.key,
          selectedDate: args.selectedDate,
          clientId: args.clientId,
          listLength: args.listLength,
        ),
      );
    },
    PasswordResetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.PasswordResetScreen(),
      );
    },
    SearchFilterRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SearchFilterScreen(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          TrainerSearchRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          LoginRoute.name,
          path: '/login-screen',
        ),
        _i11.RouteConfig(
          RegisterRoute.name,
          path: '/register-screen',
        ),
        _i11.RouteConfig(
          AccountChooseRoute.name,
          path: '/account-choose-screen',
        ),
        _i11.RouteConfig(
          ClientChooseRoute.name,
          path: '/client-choose-screen',
        ),
        _i11.RouteConfig(
          ClientRoute.name,
          path: '/client-screen',
        ),
        _i11.RouteConfig(
          CalendarExercisesRoute.name,
          path: '/calendar-exercises-screen',
        ),
        _i11.RouteConfig(
          ExerciseSearchRoute.name,
          path: '/exercise-search-screen',
        ),
        _i11.RouteConfig(
          PasswordResetRoute.name,
          path: '/password-reset-screen',
        ),
        _i11.RouteConfig(
          SearchFilterRoute.name,
          path: '/search-filter-screen',
        ),
      ];
}

/// generated route for
/// [_i1.TrainerSearchScreen]
class TrainerSearchRoute extends _i11.PageRouteInfo<void> {
  const TrainerSearchRoute()
      : super(
          TrainerSearchRoute.name,
          path: '/',
        );

  static const String name = 'TrainerSearchRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-screen',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.AccountChooseScreen]
class AccountChooseRoute extends _i11.PageRouteInfo<AccountChooseRouteArgs> {
  AccountChooseRoute({dynamic trainerId})
      : super(
          AccountChooseRoute.name,
          path: '/account-choose-screen',
          args: AccountChooseRouteArgs(trainerId: trainerId),
        );

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
class ClientChooseRoute extends _i11.PageRouteInfo<ClientChooseRouteArgs> {
  ClientChooseRoute({
    _i12.Key? key,
    required String trainerId,
  }) : super(
          ClientChooseRoute.name,
          path: '/client-choose-screen',
          args: ClientChooseRouteArgs(
            key: key,
            trainerId: trainerId,
          ),
        );

  static const String name = 'ClientChooseRoute';
}

class ClientChooseRouteArgs {
  const ClientChooseRouteArgs({
    this.key,
    required this.trainerId,
  });

  final _i12.Key? key;

  final String trainerId;

  @override
  String toString() {
    return 'ClientChooseRouteArgs{key: $key, trainerId: $trainerId}';
  }
}

/// generated route for
/// [_i6.ClientScreen]
class ClientRoute extends _i11.PageRouteInfo<void> {
  const ClientRoute()
      : super(
          ClientRoute.name,
          path: '/client-screen',
        );

  static const String name = 'ClientRoute';
}

/// generated route for
/// [_i7.CalendarExercisesScreen]
class CalendarExercisesRoute
    extends _i11.PageRouteInfo<CalendarExercisesRouteArgs> {
  CalendarExercisesRoute({
    _i12.Key? key,
    required String clientId,
  }) : super(
          CalendarExercisesRoute.name,
          path: '/calendar-exercises-screen',
          args: CalendarExercisesRouteArgs(
            key: key,
            clientId: clientId,
          ),
        );

  static const String name = 'CalendarExercisesRoute';
}

class CalendarExercisesRouteArgs {
  const CalendarExercisesRouteArgs({
    this.key,
    required this.clientId,
  });

  final _i12.Key? key;

  final String clientId;

  @override
  String toString() {
    return 'CalendarExercisesRouteArgs{key: $key, clientId: $clientId}';
  }
}

/// generated route for
/// [_i8.ExerciseSearchScreen]
class ExerciseSearchRoute extends _i11.PageRouteInfo<ExerciseSearchRouteArgs> {
  ExerciseSearchRoute({
    _i12.Key? key,
    required DateTime selectedDate,
    required String clientId,
    required int listLength,
  }) : super(
          ExerciseSearchRoute.name,
          path: '/exercise-search-screen',
          args: ExerciseSearchRouteArgs(
            key: key,
            selectedDate: selectedDate,
            clientId: clientId,
            listLength: listLength,
          ),
        );

  static const String name = 'ExerciseSearchRoute';
}

class ExerciseSearchRouteArgs {
  const ExerciseSearchRouteArgs({
    this.key,
    required this.selectedDate,
    required this.clientId,
    required this.listLength,
  });

  final _i12.Key? key;

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
class PasswordResetRoute extends _i11.PageRouteInfo<void> {
  const PasswordResetRoute()
      : super(
          PasswordResetRoute.name,
          path: '/password-reset-screen',
        );

  static const String name = 'PasswordResetRoute';
}

/// generated route for
/// [_i10.SearchFilterScreen]
class SearchFilterRoute extends _i11.PageRouteInfo<void> {
  const SearchFilterRoute()
      : super(
          SearchFilterRoute.name,
          path: '/search-filter-screen',
        );

  static const String name = 'SearchFilterRoute';
}
