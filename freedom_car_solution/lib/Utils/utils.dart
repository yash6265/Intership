import 'package:flutter/widgets.dart';

class FrameSize {
  //declare variables here
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  //init method is static so no object creation is required
  static void init({
    required context,
  }) {
    //instantiate variables here
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}
