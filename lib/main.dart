import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_do_challenge/application/utils/bloc_observer.dart';

import 'application/muslim_do_app.dart';
import 'application/utils/app_logger.dart';
import 'application/utils/http_override.dart';
import 'dependencies/dependency_init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  HttpOverrides.global = MyHttpOverrides();
  return BlocOverrides.runZoned(
    () {
      final _appLogger = getIt<AppLogger>();
      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        if (kDebugMode) {
          // AppConstants.getToast('Something wrong');
          _appLogger.error(errorDetails);
        }
      };
      runApp(const MuslimDoApp());
    },
    blocObserver: getIt<AppBlocObserver>(),
    eventTransformer: concurrent(),
  );
}

