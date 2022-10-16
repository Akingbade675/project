import 'package:flutter/material.dart';

class Responsive {
  static const int mockUpWidth = 375;
  static const int mockUpHeight = 1000;
  static late double screenHeight;
  static late double screenWidth;

  void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }
}

final scale = Responsive.screenWidth / Responsive.mockUpWidth;
double rHeight(double height) {
  return (Responsive.screenHeight * (height / Responsive.mockUpHeight));
}

double rWidth(double width) {
  return (Responsive.screenWidth * (width / Responsive.mockUpWidth));
}

double rPixel(double width) {
  return ((Responsive.screenWidth / Responsive.mockUpWidth) * (width));
}

//Horizontal Sized Box
Widget xWidth(double width) {
  return SizedBox(width: rWidth(width));
}

//Vertical Sized Box
Widget yHeight(double height) {
  return SizedBox(height: rHeight(height));
}
