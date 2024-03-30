import 'package:flutter/material.dart';

class Responsive {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? customWidth;
  static double? customHeight;


  static void init(BuildContext context,  {required double width, required double height}) {
    customWidth = width;
    customHeight = height;
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    if(screenHeight! < screenWidth!){
      screenHeight = (screenHeight! + screenWidth!);
    }
  }
}