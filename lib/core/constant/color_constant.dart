import 'package:flutter/rendering.dart';

class ColorConst {
  static final ColorConst _instance = ColorConst._init();
  static ColorConst get instance => _instance;
  ColorConst._init();

  Color kBlueBold = const Color(0xFF050352);
}
