import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static final AppRouter _instance = AppRouter._internal();
  static final navigatorKey = GlobalKey<NavigatorState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  get scaffoldKey => _scaffoldkey;

  factory AppRouter() {
    return _instance;
  }

  AppRouter._internal();

  void push(Widget page) => navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (_) => page),
      );

  void pushReplacement(Widget page) =>
      navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(builder: (_) => page),
      );

  void pop() => navigatorKey.currentState?.pop();

  void popUntil(String routeName) =>
      navigatorKey.currentState?.popUntil(ModalRoute.withName(routeName));

  void pushNamed(String routeName, {Object? arguments}) =>
      navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
}
