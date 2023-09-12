import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static final primaryAppColor = Color.fromRGBO(30, 100, 171, 1);
  static final secondoryAppColor = Color.fromRGBO(36, 38, 104, 1);

  static const textfieldFillColor = Color(0xFF263238);
  static const buttonGreyColor = Color(0xFF37474f);

  // static Color alphaBlend(Color foreground, Color background) {
  //   final int alpha = foreground.alpha;
  //   if (alpha == 0x00) { // Foreground completely transparent.
  //     return background;
  //   }
  //   final int invAlpha = 0xff - alpha;
  //   int backAlpha = background.alpha;
  //   if (backAlpha == 0xff) { // Opaque background case
  //     return Color.fromARGB(
  //       0xff,
  //       (alpha * foreground.red + invAlpha * background.red) ~/ 0xff,
  //       (alpha * foreground.green + invAlpha * background.green) ~/ 0xff,
  //       (alpha * foreground.blue + invAlpha * background.blue) ~/ 0xff,
  //     );
  //   } else { // General case
  //     backAlpha = (backAlpha * invAlpha) ~/ 0xff;
  //     final int outAlpha = alpha + backAlpha;
  //     assert(outAlpha != 0x00);
  //     return Color.fromARGB(
  //       outAlpha,
  //       (foreground.red * alpha + background.red * backAlpha) ~/ outAlpha,
  //       (foreground.green * alpha + background.green * backAlpha) ~/ outAlpha,
  //       (foreground.blue * alpha + background.blue * backAlpha) ~/ outAlpha,
  //     );
  //   }
  // }
}
