import 'package:flutter/material.dart';

class SizeConfiguration {
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.portrait
        ? screenWidth * 0.0236
        : screenHeight * 0.0236;
  }
}
