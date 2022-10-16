import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/widgets/authWidgets/auth_text_field.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/core/widgets/round_button.dart';

import '../constants.dart';

class StaffEditProfileScreen extends StatefulWidget {
  const StaffEditProfileScreen({super.key});

  @override
  State<StaffEditProfileScreen> createState() => _StaffEditProfileScreenState();
}

class _StaffEditProfileScreenState extends State<StaffEditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
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
          children: [
            const ImageHolder(
              img: 'assets/images/temp/guy_6.jpg',
              borderRadius: 12.0,
              size: 158.0,
              isBorder: false,
              borderSize: 4,
            ),
            yHeight(18),
            RoundButton(
              onPressed: () {},
              text: 'Upload Photo',
              width: rWidth(138),
              textSize: 12,
              textWeight: FontWeight.w700,
            ),
            yHeight(28),
            Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: AuthTextField(
                      title: 'First Name',
                      hintText: 'Kamal',
                      borderRadius: 5,
                      keyboardType: TextInputType.name),
                ),
                xWidth(8),
                const Expanded(
                  flex: 5,
                  child: AuthTextField(
                      title: 'Last Name',
                      hintText: 'Punjabi',
                      borderRadius: 5,
                      keyboardType: TextInputType.name),
                ),
              ],
            ),
            yHeight(16),
            const AuthTextField(
              title: 'About Me',
              hintText: aboutme,
              maxLine: 6,
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Email',
              hintText: 'kamal_punjabi@gmail.com',
              borderRadius: 5,
              keyboardType: TextInputType.emailAddress,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Phone Number',
              hintText: '+447095 7435',
              borderRadius: 5,
              keyboardType: TextInputType.phone,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Department',
              hintText: 'Department name',
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'PostCode',
              hintText: 'E9 7LP',
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Country',
              hintText: 'United Kingdom',
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(48),
            RoundButton(
              onPressed: () {},
              text: 'Save Changes',
              height: 56,
              textWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
