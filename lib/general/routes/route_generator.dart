import 'package:flutter/material.dart';
import 'package:shopmart/apps/home/screens/dropdown_screen.dart';
import 'package:shopmart/apps/login/screen/login_screen.dart';
import 'package:shopmart/apps/main_screen.dart';
import 'package:shopmart/apps/productDetails/screens/product_details.dart';

import '../../apps/home/screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final Map? arguments = settings.arguments as Map?;
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case '/main':
      return MaterialPageRoute(
        builder: (_) => const MainScreen(),
      );
      case '/productDetails':
        return MaterialPageRoute(
          builder: (_) => const ProductDetails(),
        );
      case '/test':
        return MaterialPageRoute(
          builder: (_) => const DropdownScreen(),
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
