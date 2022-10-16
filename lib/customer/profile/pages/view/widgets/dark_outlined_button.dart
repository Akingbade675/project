import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';

class DarkOutlinedButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final VoidCallback onPressed;
  const DarkOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: OutlinedButton.icon(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xFFFAFAFA),
          //padding: EdgeInsets.symmetric(vertical: rHeight(20)),
          minimumSize: Size(double.infinity, rHeight(56)),
          side: const BorderSide(color: Colors.black12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              rPixel(5),
            ),
          ),
        ),
        icon: icon ?? const SizedBox(),
        label: Text(
          text,
          textScaleFactor: scale,
          style: textStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w400,
            color: rBlack50.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
