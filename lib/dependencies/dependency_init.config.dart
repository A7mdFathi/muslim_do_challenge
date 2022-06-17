// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/utils/app_logger.dart' as _i3;
import '../application/utils/bloc_observer.dart' as _i5;
import 'register_module.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppLogger>(() => _i3.AppLoggerImpl());
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
  gh.factory<_i5.AppBlocObserver>(
      () => _i5.AppBlocObserver(get<_i3.AppLogger>()));
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}
