import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:flutter/cupertino.dart';

class StyleConst {
  static final StyleConst _instance = StyleConst._init();
  static StyleConst get instance => _instance;
  StyleConst._init();

   TextStyle styleBold(double size) {
    return TextStyle(
      color: ColorConst.instance.kBlack,
      fontWeight: FontWeight.w700,
      fontSize: getWidht(size),
    );
  }

   TextStyle styleMiddle(double size) {
    return TextStyle(
      color: ColorConst.instance.kBlack,
      fontWeight: FontWeight.w500,
      fontSize: getWidht(size),
    );
  }

   TextStyle styleSmall(double size) {
    return TextStyle(
      color: ColorConst.instance.kGrey,
      fontWeight: FontWeight.w500,
      fontSize: getWidht(size),
    );
  }
}
