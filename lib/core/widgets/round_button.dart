import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';

Responsive size = Responsive();

class RoundButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double width;
  final Color backgroundColor;
  final Color textColor;
  final double textSize;
  final FontWeight textWeight;

  const RoundButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.width = double.infinity,
      this.backgroundColor = rYellow,
      this.textColor = rGrey,
      this.textSize = 16,
      this.textWeight = FontWeight.w600});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.rWidth(width),
      height: size.rHeight(50),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(rPixel(100)))),
        child: Text(text,
            style: textStyle(
              fontSize: textSize,
              fontWeight: textWeight,
              color: textColor,
            ) // custom textStyle method in the text_theme.dart file
            ),
      ),
    );
  }
}
