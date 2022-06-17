import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

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
}
