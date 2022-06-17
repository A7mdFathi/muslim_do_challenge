import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_do_challenge/domain/gateways/muslim_do_gateway/muslim_do_gateway.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(
        receiveDataWhenStatusError: true,
        receiveTimeout: 20000,
        connectTimeout: 20000,
      ))
        ..interceptors.addAll([
          LogInterceptor(responseBody: true, requestBody: true),
        ]);

  @injectable
  MuslimDoGateway get muslimDoGateway => MuslimDoGateway(dio());
}
