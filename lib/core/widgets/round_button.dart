import 'package:flutter/material.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';

class RoundButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double width;

  const RoundButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: rYellow,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        child: Text(
          text,
          style: const TextStyle(
              color: rGrey), // TextTheme to be applied to the text
        ),
      ),
    );
  }
}
