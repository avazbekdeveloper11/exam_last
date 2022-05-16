import 'package:exam_last/core/init/splash_screen/splash_page.dart';
import 'package:exam_last/views/home_page/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static final RouteGenerator _instance = RouteGenerator._init();
  static RouteGenerator get instance => _instance;
  RouteGenerator._init();

  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return navPage(const SplashScreen());
      case "/home_screen":
        return navPage(const HomePage());
    }
    return null;
  }

  MaterialPageRoute<dynamic> navPage(page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
