
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_do_challenge/presentation/pages/details_page/details_page.dart';
import 'package:muslim_do_challenge/presentation/pages/home_page/home_page.dart';

import '../../presentation/pages/error_page.dart';

const String detailsRouteName = 'details';
const String homeRouteName = 'home';

@injectable
class MyRouter with ChangeNotifier{
  MyRouter();

  final router = GoRouter(
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    initialLocation: '/',
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: ErrorPage(error: state.error),
    ),
    routes: [
      GoRoute(
        name: homeRouteName,
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const HomePage(),
        ),
      ),
      GoRoute(
        name: detailsRouteName,
        path: '/details',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const DetailsPage(),
        ),
      ),
    ],
  );
}
