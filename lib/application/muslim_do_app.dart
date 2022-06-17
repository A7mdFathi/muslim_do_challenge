import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_do_challenge/application/router/routes.dart';
import 'package:muslim_do_challenge/dependencies/dependency_init.dart';
import 'package:provider/provider.dart';

class MuslimDoApp extends StatelessWidget {
  const MuslimDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => getIt<MyRouter>(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          final router=Provider.of<MyRouter>(context,listen: false).router;
          return MaterialApp.router(
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            routerDelegate: router.routerDelegate,
            debugShowCheckedModeBanner: false,
            title: 'Muslim do Challenge',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
