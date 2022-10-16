import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';

class OutlineButton extends StatelessWidget {
  final bool isText;
  final String text;
  final String subText;
  final VoidCallback onPressed;
  const OutlineButton({
    Key? key,
    this.isText = true,
    required this.text,
    required this.subText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: rGrey.withOpacity(0)),
                borderRadius: BorderRadius.circular(rPixel(5))),
            padding: EdgeInsets.symmetric(
                vertical: rHeight(18), horizontal: rWidth(16))),
        child: Row(
          children: [
            Text(text,
                textScaleFactor: scale,
                style: textStyle(fontSize: 12, color: rBlack60)),
            const Spacer(),
            isText
                ? Text(
                    textScaleFactor: scale,
                    subText,
                    style: textStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: rBlack60.withOpacity(0.5)),
                  )
                : Container(
                    height: rHeight(24),
                    width: rWidth(24),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: rRed,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      textScaleFactor: scale,
                      subText,
                      style: textStyle(fontSize: 8, color: Colors.white),
                    ),
                  ),
            Icon(
              Icons.chevron_right_rounded,
              color: rBlack60,
              size: rPixel(24),
            ),
          ],
        ));
  }
}
