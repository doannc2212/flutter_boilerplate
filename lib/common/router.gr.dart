// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../module/landing/view/error_page.dart' as _i3;
import '../module/landing/view/landing_page.dart' as _i1;
import '../module/landing/view/loading_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
      );
    },
    AuthenticationRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MainRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ErrorRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ErrorPage(),
      );
    },
    LoadingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoadingPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LandingRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              AuthenticationRouter.name,
              path: 'authentication',
              parent: LandingRoute.name,
              children: [
                _i5.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: AuthenticationRouter.name,
                  redirectTo: 'sign-in',
                  fullMatch: true,
                )
              ],
            ),
            _i5.RouteConfig(
              MainRouter.name,
              path: 'main',
              parent: LandingRoute.name,
              children: [
                _i5.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: MainRouter.name,
                  redirectTo: 'dashboard',
                  fullMatch: true,
                )
              ],
            ),
            _i5.RouteConfig(
              ErrorRoute.name,
              path: 'error',
              parent: LandingRoute.name,
            ),
            _i5.RouteConfig(
              LoadingRoute.name,
              path: 'loading',
              parent: LandingRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AuthenticationRouter extends _i5.PageRouteInfo<void> {
  const AuthenticationRouter({List<_i5.PageRouteInfo>? children})
      : super(
          AuthenticationRouter.name,
          path: 'authentication',
          initialChildren: children,
        );

  static const String name = 'AuthenticationRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MainRouter extends _i5.PageRouteInfo<void> {
  const MainRouter({List<_i5.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          path: 'main',
          initialChildren: children,
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i3.ErrorPage]
class ErrorRoute extends _i5.PageRouteInfo<void> {
  const ErrorRoute()
      : super(
          ErrorRoute.name,
          path: 'error',
        );

  static const String name = 'ErrorRoute';
}

/// generated route for
/// [_i4.LoadingPage]
class LoadingRoute extends _i5.PageRouteInfo<void> {
  const LoadingRoute()
      : super(
          LoadingRoute.name,
          path: 'loading',
        );

  static const String name = 'LoadingRoute';
}
