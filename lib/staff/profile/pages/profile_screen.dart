import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/customer/profile/pages/view/pages/outline_button_model.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/outlined_button.dart';

class StaffProfileScreen extends StatelessWidget {
  StaffProfileScreen({super.key});

  final buttonModel = <OutlineButtonModel>[
    OutlineButtonModel(
      text: 'Waiting Appointment',
      subText: '5',
      isText: false,
    ),
    OutlineButtonModel(
      text: 'On-Going Appointment',
      subText: '2',
      isText: false,
    ),
    OutlineButtonModel(text: 'Appointment History'),
    OutlineButtonModel(text: 'Department', subText: 'Department name'),
    OutlineButtonModel(text: 'Account', subText: 'kamal_punjabi@gmail.com'),
    OutlineButtonModel(text: 'Caseload'),
    OutlineButtonModel(text: 'Change Password'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        color: Colors.white,
        padding:
            EdgeInsets.symmetric(vertical: rHeight(24), horizontal: rWidth(32)),
        constraints: BoxConstraints(
          minHeight: Responsive.screenHeight,
          minWidth: Responsive.screenWidth,
        ),
        child: Column(
          children: [
            const ImageHolder(
              img: 'assets/images/temp/guy_6.jpg',
              borderRadius: 12.0,
              size: 156.0,
              borderSize: 4,
            ),
            yHeight(16),
            Text(
              'Kamal Punjabi',
              style: textStyle(fontSize: 16.0, color: rBlack),
              textScaleFactor: scale,
            ),
            yHeight(20),
            Text(
              aboutme,
              style: textStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: rBlack50.withOpacity(0.5)),
              textScaleFactor: scale,
              textAlign: TextAlign.center,
            ),
            yHeight(24),
            for (var button in buttonModel) ...[
              OutlineButton(
                text: button.text,
                subText: button.subText,
                isText: button.isText,
                onPressed: () {},
              ),
              yHeight(10),
            ],
            yHeight(56),
            TextButton(
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
            yHeight(20),
          ],
        ),
      ),
    );
  }
}
