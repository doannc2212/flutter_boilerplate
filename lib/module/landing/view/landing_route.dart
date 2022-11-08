import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter_boilerplate/module/landing/view/error_page.dart';
import 'package:flutter_boilerplate/module/landing/view/loading_page.dart';

const errorRoute = AutoRoute(
  path: 'error',
  name: 'errorRoute',
  page: ErrorPage,
);

const loadingRoute = AutoRoute(
  path: 'loading',
  name: 'loadingRoute',
  page: LoadingPage,
);

const mainRouter = AutoRoute(
  path: 'main',
  name: 'MainRouter',
  page: EmptyRouterPage,
  children: [
    // dashboardRoute,
    // clinicRoute,
    // clinicListingRoute,
    // doctorRoute,
    // doctorListingRoute,
    // bookingRoute,
    // profileRoute,
    // familyMemberRoute,
    RedirectRoute(path: '*', redirectTo: 'dashboard'),
  ],
);
