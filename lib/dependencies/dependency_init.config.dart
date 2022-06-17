// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/router/routes.dart' as _i6;
import '../application/utils/app_logger.dart' as _i3;
import '../application/utils/bloc_observer.dart' as _i7;
import '../domain/gateways/muslim_do_gateway/muslim_do_gateway.dart' as _i5;
import '../domain/repositories/clients_repository.dart' as _i8;
import '../domain/usecases/get_clients_use_case.dart' as _i9;
import '../presentation/pages/home_page/bloc/clients_bloc/clients_bloc.dart'
    as _i10;
import 'register_module.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppLogger>(() => _i3.AppLoggerImpl());
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
  gh.factory<_i5.MuslimDoGateway>(() => registerModule.muslimDoGateway);
  gh.factory<_i6.MyRouter>(() => _i6.MyRouter());
  gh.factory<_i7.AppBlocObserver>(
      () => _i7.AppBlocObserver(get<_i3.AppLogger>()));
  gh.factory<_i8.ClientRepository>(
      () => _i8.ClientRepositoryImpl(get<_i5.MuslimDoGateway>()));
  gh.factory<_i9.GetClientsUseCase>(
      () => _i9.GetClientsUseCase(get<_i8.ClientRepository>()));
  gh.factory<_i10.ClientsBloc>(
      () => _i10.ClientsBloc(get<_i9.GetClientsUseCase>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
