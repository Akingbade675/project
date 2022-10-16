import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/core/widgets/round_button.dart';
import 'package:renaisi_project/employer/constants.dart';
import 'package:renaisi_project/employer/profile/widgets/recent_job_opening_tile.dart';

class EmployerOthersProfileScreen extends StatelessWidget {
  EmployerOthersProfileScreen({super.key});

  final List<Map<String, String>> jobOpening = [
    {'title': 'Senior UI / UX Designer', 'subtitle': '£2.000 / month'},
    {'title': 'Junior Copywriter', 'subtitle': '£1000 / month'},
    {'title': 'Junior Social Media Manager', 'subtitle': '£1000 / month'}
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: rHeight(32),
          horizontal: rWidth(32),
        ),
        constraints: BoxConstraints(
          minHeight: Responsive.screenHeight,
          minWidth: Responsive.screenWidth,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: ImageHolder(
                img: 'assets/images/temp/guy_6.jpg',
                borderRadius: 18.0,
                size: 160.0,
                borderSize: 3,
              ),
            ),
            yHeight(24),
            Center(
              child: Text(
                'Maria Kenneth',
                style: textStyle(fontSize: 16.0, color: rBlack),
                textScaleFactor: scale,
              ),
            ),
            yHeight(3),
            Center(
              child: Text(
                'Company',
                style:
                    textStyle(fontSize: 12.0, color: rBlack50.withOpacity(0.5)),
                textScaleFactor: scale,
              ),
            ),
            yHeight(24),
            Text(
              'About This Company',
              style: textStyle(fontSize: 12.0, color: rBlack50),
              textScaleFactor: scale,
            ),
            yHeight(8),
            Text(
              about,
              style: textStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
                color: rGrey,
              ),
              textScaleFactor: scale,
            ),
            yHeight(20),
            Text(
              'Website',
              textScaleFactor: scale,
              style: textStyle(fontSize: 12.0, color: rBlack50),
            ),
            yHeight(14),
            Row(
              children: [
                Icon(
                  Icons.web,
                  size: rHeight(14),
                  color: rYellow,
                ),
                xWidth(10),
                Text(
                  'www.mariakenneth.com',
                  textScaleFactor: scale,
                  style: textStyle(
                    fontSize: 10,
                    color: rGrey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            yHeight(22),
            Text(
              'Recent job opening',
              textScaleFactor: scale,
              style: textStyle(fontSize: 12.0, color: rBlack50),
            ),
            yHeight(14),
            for (var tile in jobOpening) ...[
              JobOpeningTile(
                title: tile['title']!,
                subtitle: tile['subtitle']!,
              ),
              yHeight(10),
            ],
          ],
        ),
      ),
    );
  }
}
