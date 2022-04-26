// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/provider/auth_provider.dart' as _i5;
import '../../data/provider/calendar_exercise_provider.dart' as _i6;
import '../../data/provider/client_choose_provider.dart' as _i8;
import '../../data/provider/exercise_search_provider.dart' as _i11;
import '../../data/provider/firebase_provider.dart' as _i12;
import '../../data/provider/register_provider.dart' as _i13;
import '../../domain/mapper/client_mapper.dart' as _i9;
import '../../domain/mapper/exercise_mapper.dart' as _i10;
import '../../domain/mapper/user_exercise_mapper.dart' as _i14;
import '../app_router.gr.dart' as _i3;
import '../widget/calendar/calendar_provider.dart' as _i7;
import 'auth_guard.dart' as _i4;
import 'navigation_module.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final navigationModule = _$NavigationModule();
  gh.lazySingleton<_i3.AppRouter>(() => navigationModule.appRouter());
  gh.factory<_i4.AuthGuard>(() => _i4.AuthGuard());
  gh.factory<_i5.AuthProvider>(() => _i5.AuthProvider());
  gh.factory<_i6.CalendarExerciseProvider>(
      () => _i6.CalendarExerciseProvider());
  gh.factory<_i7.CalendarProvider>(() => _i7.CalendarProvider());
  gh.factory<_i8.ClientChooseProvider>(() => _i8.ClientChooseProvider());
  gh.factory<_i9.ClientMapper>(() => _i9.ClientMapper());
  gh.factory<_i10.ExerciseMapper>(() => _i10.ExerciseMapper());
  gh.factory<_i11.ExerciseSearchProvider>(() => _i11.ExerciseSearchProvider());
  gh.factory<_i12.FirebaseProvider>(() => _i12.FirebaseProvider());
  gh.factory<_i13.RegisterProvider>(() => _i13.RegisterProvider());
  gh.factory<_i14.UserExerciseMapper>(() => _i14.UserExerciseMapper());
  return get;
}

class _$NavigationModule extends _i15.NavigationModule {}
