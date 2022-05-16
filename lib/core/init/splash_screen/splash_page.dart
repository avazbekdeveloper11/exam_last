import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/path_constant.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navAfterPage();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: ColorConst.instance.kBlueBold,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: getHeight(293), bottom: getHeight(216)),
              child: SizedBox(
                width: getWidht(162),
                height: getHeight(189),
                child: Image.asset(PathConstant.instance.appIcon),
              ),
            ),
            SizedBox(
              width: getWidht(162),
              child: Image.asset(PathConstant.instance.organaApp),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> navAfterPage() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () => Navigator.pushNamed(context, '/home_screen'),
    );
  }
}
