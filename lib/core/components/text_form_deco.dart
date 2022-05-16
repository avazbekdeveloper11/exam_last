import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFormDeco {
  static deco() {
    return InputDecoration(
      hintText: "Izlash",
      suffixIcon: SvgPicture.asset(
        "assets/images/svg/search.svg",
        fit: BoxFit.none,
      ),
      contentPadding: const EdgeInsets.only(top: 15, left: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
