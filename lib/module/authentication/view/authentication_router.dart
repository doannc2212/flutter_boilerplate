import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

const authenticationRouter = AutoRoute(
  path: 'authentication',
  name: 'AuthenticationRouter',
  page: EmptyRouterPage,
  children: [
    // AutoRoute(path: 'sign-up', name: 'SignInRoute', page: SignInPage),
    // AutoRoute(path: 'sign-in', name: 'SignUpRoute', page: SignUpPage),
    // AutoRoute(
    //   path: 'verification',
    //   name: 'VerificationRoute',
    //   page: VerificationPage,
    // ),
    RedirectRoute(path: '*', redirectTo: 'sign-in'),
  ],
);
