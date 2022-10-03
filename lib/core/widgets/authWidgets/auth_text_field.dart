import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import '../../../../../core/theme/color_palette.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final int maxLine;
  final TextInputType keyboardType;
  final bool obscure;
  const CustomTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.maxLine,
    required this.keyboardType,
    this.obscure = false
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextThemeStyle.title3.copyWith(color: rPurple),
        ),
        yHeight(1.5),
        TextField(
          maxLines: widget.maxLine,
          cursorColor: rPurple.withOpacity(0.3),
          cursorWidth: 1.5,
          cursorHeight: rPixel(18),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: rPixel(15), horizontal: rPixel(20)),
            hintText: widget.hintText,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(rPixel(100)),
                borderSide: const BorderSide(color: rPurple)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(rPixel(100)),
              borderSide: BorderSide(color: rGrey.withOpacity(0.13)),
            ),
          ),
        )
      ],
    );
  }
}


//roundedCornerRadius
