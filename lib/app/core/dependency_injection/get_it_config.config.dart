// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/mapper/client_mapper.dart' as _i8;
import '../../../data/mapper/exercise_mapper.dart' as _i9;
import '../../../data/mapper/user_exercise_mapper.dart' as _i13;
import '../../../data/provider/auth_provider.dart' as _i4;
import '../../../data/provider/calendar_exercise_provider.dart' as _i5;
import '../../../data/provider/client_choose_provider.dart' as _i7;
import '../../../data/provider/exercise_search_provider.dart' as _i10;
import '../../../data/provider/firebase_provider.dart' as _i11;
import '../../../data/provider/register_provider.dart' as _i12;
import '../../widget/calendar/calendar_provider.dart' as _i6;
import '../auth_guard.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthGuard>(() => _i3.AuthGuard());
  gh.factory<_i4.AuthProvider>(() => _i4.AuthProvider());
  gh.factory<_i5.CalendarExerciseProvider>(
      () => _i5.CalendarExerciseProvider());
  gh.factory<_i6.CalendarProvider>(() => _i6.CalendarProvider());
  gh.factory<_i7.ClientChooseProvider>(() => _i7.ClientChooseProvider());
  gh.factory<_i8.ClientMapper>(() => _i8.ClientMapper());
  gh.factory<_i9.ExerciseMapper>(() => _i9.ExerciseMapper());
  gh.factory<_i10.ExerciseSearchProvider>(() => _i10.ExerciseSearchProvider());
  gh.factory<_i11.FirebaseProvider>(() => _i11.FirebaseProvider());
  gh.factory<_i12.RegisterProvider>(() => _i12.RegisterProvider());
  gh.factory<_i13.UserExerciseMapper>(() => _i13.UserExerciseMapper());
  return get;
}
