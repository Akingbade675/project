import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/core/widgets/round_button.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/chips.dart';

/* This screen is how the customers
profile screen looks to others */

class OthersProfileScreen extends StatelessWidget {
  OthersProfileScreen({super.key});

  /* I used a list of Strings to build the skills widget because it is 
  dynamic, this data would be gotten from the backend. Instead of hard-
  coding the widgets themselves.
  The Skills widget can be found on Line: 88 of this file */
  final List<String> skills = ['Senior Graphics Designer', 'Senior Copywriter'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: rHeight(24),
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
                img: 'assets/images/temp/guy_4.jpg',
                borderRadius: 18.0,
                size: 160.0,
                borderSize: 3,
              ),
            ),
            yHeight(18),
            Center(
              child: Text(
                'Ben Brown',
                style: textStyle(fontSize: 16.0, color: rBlack),
                textScaleFactor: scale,
              ),
            ),
            yHeight(3),
            Center(
              child: Text(
                'Fulltime Freelancer',
                style:
                    textStyle(fontSize: 12.0, color: rBlack50.withOpacity(0.5)),
                textScaleFactor: scale,
              ),
            ),
            yHeight(24),
            Text(
              'About Me',
              style: textStyle(fontSize: 12.0, color: rBlack50),
              textScaleFactor: scale,
            ),
            yHeight(8),
            Text(
              aboutme,
              style: textStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
                color: rGrey,
              ),
              textScaleFactor: scale,
            ),
            yHeight(20),
            Text(
              'My Skill',
              style: textStyle(fontSize: 12.0, color: rBlack50),
              textScaleFactor: scale,
            ),
            yHeight(12),
            /* this is the skills widget block looping through the list 
            of skills to build dynamic number of widgets */
            Wrap(
              spacing: rWidth(10),
              runSpacing: rHeight(10),
              children: [
                for (var skill in skills) ...[rChip(skill)]
              ],
            ),
            yHeight(18),
            Text(
              'Website',
              textScaleFactor: scale,
              style: textStyle(fontSize: 12.0, color: rBlack50),
            ),
            yHeight(14),

            /* Implemented a method "rowTile" to return a row of 
            the icon and text widgets.
            This was done to avoid repeating the same code for each row

            Method "rowTile" can be found on Line: 173
            */
            rowTile(
              text: 'https://www.benbrown.com',
              icon: Icon(
                Icons.web,
                size: rHeight(14),
                color: rYellow,
              ),
            ),
            yHeight(22),
            Text(
              'Experience',
              textScaleFactor: scale,
              style: textStyle(fontSize: 12.0, color: rBlack50),
            ),
            yHeight(14),
            rowTile(
              text: 'Have 8 years experience in same field',
              icon: Icon(
                Icons.star,
                size: rHeight(14),
                color: rYellow,
              ),
            ),
            yHeight(56),
            RoundButton(
              onPressed: () {},
              text: 'View Ben Brown CV',
              backgroundColor: rBlue,
              borderRadius: 5,
              textWeight: FontWeight.w500,
              textSize: 12,
              textColor: Colors.white,
            ),
            yHeight(40),
            //const Spacer(),
            Row(
              children: [
                Expanded(
                  child: RoundButton(
                    onPressed: () {},
                    text: 'Decline',
                    backgroundColor: rGrey.withOpacity(0.13),
                    textColor: rBlack30,
                    textSize: rPixel(12),
                    textWeight: FontWeight.w700,
                  ),
                ),
                xWidth(10),
                Expanded(
                  child: RoundButton(
                    onPressed: () {},
                    text: 'Interview',
                    textSize: rPixel(12),
                    textWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row rowTile({required Icon icon, required String text}) {
    return Row(
      children: [
        icon,
        xWidth(10),
        Text(
          text,
          textScaleFactor: scale,
          style: textStyle(
            fontSize: 10,
            color: rGrey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
