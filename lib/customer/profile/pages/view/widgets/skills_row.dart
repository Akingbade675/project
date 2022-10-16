import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';

class SkillsRow extends StatelessWidget {
  final String text;
  final VoidCallback onDelete;
  const SkillsRow({
    Key? key,
    required this.text,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: rHeight(48),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: rWidth(20),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFaFAFA),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: rGrey.withOpacity(0.13)),
            ),
            child: Text(
              text,
              style: textStyle(
                  fontSize: 12, color: rBlack60, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        xWidth(8),
        Container(
          width: rHeight(48),
          height: rHeight(48),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: rWidth(0),
            vertical: rHeight(0),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: rGrey.withOpacity(0.13)),
          ),
          child: InkWell(
            onTap: onDelete,
            child: Icon(
              Icons.delete_rounded,
              color: rRed,
              size: rPixel(18),
            ),
          ),
        ),
      ],
    );
  }
}
