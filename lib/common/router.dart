// ignore_for_file: strict_raw_type

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/module/authentication/view/authentication_router.dart';
import 'package:flutter_boilerplate/module/landing/view/landing_page.dart';
import 'package:flutter_boilerplate/module/landing/view/landing_route.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('didPush: ${route.settings.name}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint('didPop: ${route.settings.name}');
    super.didPop(route, previousRoute);
  }
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LandingPage,
      path: '/',
      initial: true,
      children: [
        authenticationRouter,
        mainRouter,
        errorRoute,
        loadingRoute,
      ],
    ),
  ],
)
class $AppRouter {}
