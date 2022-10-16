import 'package:flutter/material.dart';

import '../size_config/responsiveness.dart';
import '../theme/color_palette.dart';

class ImageHolder extends StatelessWidget {
  final String img;
  final double borderRadius;
  final double borderSize;
  final bool isBorder;
  final double size;

  const ImageHolder({
    super.key,
    required this.img,
    required this.borderRadius,
    this.isBorder = true,
    required this.size,
    this.borderSize = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: rWidth(size),
      height: rWidth(size),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rPixel(borderRadius)),
          image: DecorationImage(image: AssetImage(img)),
          border: Border.all(
            color: isBorder ? rYellow : Colors.white,
            width: isBorder ? rPixel(borderSize) : 0,
          )),
      //child: Image.asset(img),
    );
  }
}
