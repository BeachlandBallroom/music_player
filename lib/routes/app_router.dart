import 'package:flutter/material.dart';

class AppRouter {
  static Route generate(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(child: Text("Route")),
      ),
    );
  }
}