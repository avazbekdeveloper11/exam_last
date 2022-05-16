import 'package:exam_last/core/init/splash_screen/splash_page.dart';
import 'package:exam_last/views/home_page/home_page.dart';
import 'package:exam_last/views/product_page/product_page.dart';
import 'package:exam_last/views/video_page/video_page.dart';
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
      case "/product_screen":
        return navPage(const ProductPage());
      case "/video_screen":
        return navPage(VideoPage());
    }
    return null; //video_screen
  }

  MaterialPageRoute<dynamic> navPage(page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
