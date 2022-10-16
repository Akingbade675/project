import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';

Chip rChip(String text) {
  return Chip(
    backgroundColor: rYellow,
    labelPadding: EdgeInsets.symmetric(horizontal: rHeight(10)),
    label: Text(
      text,
      textScaleFactor: scale,
    ),
    labelStyle:
        textStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: rBlack60),
  );
}
