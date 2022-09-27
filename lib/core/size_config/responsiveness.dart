import 'package:flutter/material.dart';

class Responsive{
  static late double screenHeight;
  static late double screenWidth;

  void init(BuildContext context){
    screenHeight =  MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  double rHeight(double height){
    return (screenHeight * (height/100));
  }

  double rWidth(double width){
    return (screenWidth * (width/100));
  }

  double rPixel(double width){
    return ((screenWidth/100) * (width/3));
  }

  Widget xWidth(double width){
    return SizedBox(width: rWidth(width));
  }

  Widget yHeight(double height){
    return SizedBox(height: rHeight(height));
  }

}