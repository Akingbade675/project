import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';

class JobOpeningTile extends StatelessWidget {
  final String title;
  final String subtitle;
  const JobOpeningTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_today,
          color: rGrey,
          size: rHeight(14),
        ),
        xWidth(10),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textStyle(
                fontSize: 10,
                color: rBlack50,
                fontWeight: FontWeight.w400,
              ),
            ),
            yHeight(3),
            Text(
              subtitle,
              style: textStyle(
                fontSize: 8,
                color: rPurple,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ListTile(
//       contentPadding: const EdgeInsets.all(0),
//       horizontalTitleGap: 10,
//       minLeadingWidth: rWidth(14),
//       dense: true,
//       leading: Icon(
//         Icons.calendar_today,
//         color: rGrey,
//         size: rHeight(14),
//       ),
//       title: Text(
//         title,
//         style: textStyle(
//           fontSize: 10,
//           color: rBlack50,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//       subtitle: Text(
//         subtitle,
//         style: textStyle(
//           fontSize: 8,
//           color: rPurple,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//     );