import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/customer/profile/pages/view/pages/outline_button_model.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/outlined_button.dart';

class EmployerProfileScreen extends StatelessWidget {
  EmployerProfileScreen({super.key});

  final buttonModel = <OutlineButtonModel>[
    OutlineButtonModel(text: 'Business Name', subText: 'Business name'),
    OutlineButtonModel(text: 'Job Vacancies'),
    OutlineButtonModel(text: 'Payment'),
    OutlineButtonModel(text: 'Website'),
    OutlineButtonModel(text: 'Account', subText: 'mariaken@gmail.com'),
    OutlineButtonModel(text: 'Manage your ads'),
    OutlineButtonModel(text: 'Change Password'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
          yHeight(32),
          Text(
            'Maria Kenneth',
            style: textStyle(fontSize: 16.0, color: rBlack),
            textScaleFactor: scale,
          ),
          yHeight(32),
          for (var button in buttonModel) ...[
            OutlineButton(
              text: button.text,
              subText: button.subText,
              isText: button.isText,
              onPressed: () {},
            ),
            yHeight(10),
          ],
          yHeight(24),
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
        ],
      ),
    );
  }
}
