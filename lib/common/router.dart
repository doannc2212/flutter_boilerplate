// ignore_for_file: strict_raw_type

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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

// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute>[
//     AutoRoute(
//       page: LandingPage,
//       path: '/',
//       initial: true,
//       children: [
//         unauthenticationRouter,
//         mainRouter,
//         errorRoute,
//         loadingRoute,
//       ],
//     ),
//   ],
// )
// class $AppRouter {}
