import 'package:flutter/material.dart';
import 'package:shopmart/apps/main_screen.dart';

import '../../apps/home/screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final Map? arguments = settings.arguments as Map?;
    switch (settings.name) {
      case '/main':
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        );
      },
    );
  }
}
