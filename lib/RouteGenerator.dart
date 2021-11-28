import 'package:flutter/material.dart';
import 'package:society_management/screens/LandingPageScreen.dart';
import 'package:society_management/screens/SplashScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/': //Initial Route
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case '/landingPage':
        return MaterialPageRoute(builder: (_) => LandingPageScreen(args));

      default: //If none matches show this page
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Page not found'),
        ),
      );
    });
  }
}
