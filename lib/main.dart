import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_do_challenge/application/utils/bloc_observer.dart';
import 'package:muslim_do_challenge/presentation/pages/home_page/home_page.dart';

import 'application/utils/app_logger.dart';
import 'dependencies/dependency_init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
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

class MuslimDoApp extends StatelessWidget {
  const MuslimDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          home: HomePage(),
        );
      },
    );
  }
}
