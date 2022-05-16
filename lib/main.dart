import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/text_constant.dart';
import 'package:exam_last/core/routes/routes.dart';
import 'package:exam_last/views/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      title: TextConstant.instance.APPNAME,
      onGenerateRoute: RouteGenerator.instance.generateRoute,
    );
  }
}
