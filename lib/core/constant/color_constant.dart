import 'package:flutter/rendering.dart';

class ColorConst {
  static final ColorConst _instance = ColorConst._init();
  static ColorConst get instance => _instance;
  ColorConst._init();

  Color kBlueBold = const Color(0xFF050352);
  Color kBlue = const Color(0xFF31B9CC);
  Color kBlack = const Color(0xFF000000);
  Color kWhite = const Color(0xFFFFFFFF);
  Color kGrey = const Color(0xFF798184);
  Color kProductCartWhite = const Color(0xFFF1F2F6);
}//
