import 'package:flutter/material.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';

class SignLinkText extends StatelessWidget {
  final String text;

  final String buttonText;

  final void Function()? onPressed;

  const SignLinkText(
      {super.key,
      required this.text,
      required this.buttonText,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: rBlack30,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            buttonText,
            style: const TextStyle(
              color: rYellow,
            ),
          ),
        ],
      ),
    );
  }
}
