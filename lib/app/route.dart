import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/module/counter/counter.dart';
import 'package:flutter_boilerplate/module/home/home.dart';

mixin AppRoute {
  static Map<String, WidgetBuilder> get routes => {
        RouteName.home: (context) => const HomePage(),
        RouteName.counter: (context) => const CounterPage(),
      };
}

mixin RouteName {
  static const String home = '/';
  static const String counter = '/counter';
}
