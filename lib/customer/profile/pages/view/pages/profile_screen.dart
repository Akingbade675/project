import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/customer/profile/pages/view/pages/outline_button_model.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/chips.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/dark_outlined_button.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/outlined_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final buttonModel = <OutlineButtonModel>[
    OutlineButtonModel(text: 'My Appointments', subText: '2', isText: false),
    OutlineButtonModel(text: 'My Appointment History'),
    OutlineButtonModel(text: 'Action Plan'),
    OutlineButtonModel(text: 'Advisor'),
    OutlineButtonModel(text: 'Interview'),
    OutlineButtonModel(text: 'Account', subText: 'johndoe@gmail.com'),
    OutlineButtonModel(text: 'Change Password'),
  ];

  final List<String> skills = ['Senior Graphics Designer', 'Senior Copywriter'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding:
            EdgeInsets.symmetric(vertical: rHeight(48), horizontal: rWidth(32)),
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
                borderRadius: 12.0,
                size: 156.0,
                borderSize: 4,
              ),
            ),
            yHeight(32),
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
                  color: rBlack50.withOpacity(0.5)),
              textScaleFactor: scale,
            ),
            yHeight(16),
            Text(
              'My Skill',
              style: textStyle(fontSize: 12.0, color: rBlack50),
              textScaleFactor: scale,
            ),
            yHeight(12),
            Wrap(
              spacing: rWidth(10),
              runSpacing: rHeight(10),
              children: [
                for (var skill in skills) ...[rChip(skill)]
              ],
            ),
            yHeight(26),
            Text(
              'My CV',
              textScaleFactor: scale,
              style: textStyle(fontSize: 12.0, color: rBlack50),
            ),
            yHeight(12),
            DarkOutlinedButton(
              text: 'See My Profile CV',
              onPressed: () {},
            ),
            yHeight(50),

            /* */
            for (var button in buttonModel) ...[
              OutlineButton(
                text: button.text,
                subText: button.subText,
                isText: button.isText,
                onPressed: () {},
              ),
              yHeight(10),
            ],
            // const OutlineButton(
            //   text: 'My Appointments',
            //   subText: '2',
            //   isText: false,
            // ),
            // yHeight(6),
            // const OutlineButton(
            //   text: 'My Appointment History',
            // ),
            // yHeight(6),
            // const OutlineButton(
            //   text: 'Action Plan',
            // ),
            // yHeight(6),
            // const OutlineButton(
            //   text: 'Advisor',
            // ),
            // yHeight(6),
            // const OutlineButton(
            //   text: 'Interview',
            // ),
            // yHeight(6),
            // const OutlineButton(
            //   text: 'Account',
            //   subText: 'johndoe@gmail.com',
            // ),
            // yHeight(6),
            // const OutlineButton(
            //   text: 'Change Password',
            // ),
            yHeight(34),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Log Out',
                  textScaleFactor: scale,
                  style: textStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF292929),
                  ),
                ),
              ),
            ),
            yHeight(8),
          ],
        ),
      ),
    );
  }
}
