
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../presentation/pages/home_page/home_page.dart';

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
