import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/common/router.gr.dart';
import 'package:flutter_boilerplate/module/landing/bloc/landing_bloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingBloc, LandingState>(
      bloc: context.read<LandingBloc>(),
      builder: (context, state) {
        return WillPopScope(
          child: AutoRouter.declarative(
            routes: (context) => [
              if (state == const LandingState.authenticated())
                const MainRouter()
              else if (state == const LandingState.unauthenticated())
                const AuthenticationRouter()
              else if (state == const LandingState.loading())
                const LoadingRoute()
              else
                const ErrorRoute()
            ],
          ),
          onWillPop: () async => false,
        );
      },
    );
  }
}
