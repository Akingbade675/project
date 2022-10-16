import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import '../../../../../core/theme/color_palette.dart';

class AuthTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final int maxLine;
  final TextInputType keyboardType;
  final bool obscure;
  final double borderRadius;
  const AuthTextField(
      {Key? key,
      required this.title,
      required this.hintText,
      this.maxLine = 1,
      required this.keyboardType,
      this.obscure = false,
      this.borderRadius = 100})
      : super(key: key);

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: textStyle(
              fontSize: 12,
              color: widget.borderRadius == 100 ? rPurple : rBlack60),
        ),
        yHeight(8),
        TextField(
          maxLines: widget.maxLine,
          cursorColor: rPurple.withOpacity(0.3),
          cursorWidth: 1.5,
          cursorHeight: rPixel(14),
          style: textStyle(
            fontSize: rPixel(12),
            color: rBlack60,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: rPixel(15), horizontal: rPixel(20)),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize: rPixel(12),
              fontWeight: FontWeight.w400,
              // color: rBlack60,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(rPixel(widget.borderRadius)),
                borderSide: const BorderSide(color: rPurple)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(rPixel(widget.borderRadius)),
              borderSide: BorderSide(color: rGrey.withOpacity(0.13)),
            ),
          ),
        )
      ],
    );
  }
}


//roundedCornerRadius
