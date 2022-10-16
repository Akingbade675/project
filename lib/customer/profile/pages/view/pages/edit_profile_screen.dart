import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/theme/color_palette.dart';
import 'package:renaisi_project/core/theme/text_theme.dart';
import 'package:renaisi_project/core/widgets/authWidgets/auth_text_field.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/core/widgets/round_button.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/dark_outlined_button.dart';
import 'package:renaisi_project/customer/profile/pages/view/widgets/skills_row.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: rHeight(48),
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
                borderRadius: 12.0,
                size: 158.0,
                isBorder: false,
                borderSize: 4,
              ),
            ),
            yHeight(18),
            Center(
              child: RoundButton(
                onPressed: () {},
                text: 'Upload Photo',
                width: rWidth(138),
                textSize: 12,
                textWeight: FontWeight.w700,
              ),
            ),
            yHeight(28),
            Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: AuthTextField(
                      title: 'First Name',
                      hintText: 'Ben',
                      borderRadius: 5,
                      keyboardType: TextInputType.name),
                ),
                xWidth(8),
                const Expanded(
                  flex: 5,
                  child: AuthTextField(
                      title: 'Last Name',
                      hintText: 'Brown',
                      borderRadius: 5,
                      keyboardType: TextInputType.name),
                ),
              ],
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Email',
              hintText: 'johndoe@gmail.com',
              borderRadius: 5,
              keyboardType: TextInputType.emailAddress,
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
            Text(
              'Your CV',
              style: textStyle(
                fontSize: 12,
                color: rBlack60,
              ),
            ),
            yHeight(8),
            DarkOutlinedButton(
              onPressed: () {},
              text: 'Upload your CV',
              icon: Icon(
                Icons.link_outlined,
                size: 18,
                color: rBlack50.withOpacity(0.5),
              ),
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Phone Number',
              hintText: '+4485725712345',
              borderRadius: 5,
              keyboardType: TextInputType.phone,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Profession',
              hintText: 'Fulltime Freelancer',
              borderRadius: 5,
              keyboardType: TextInputType.phone,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Post Code',
              hintText: '94025',
              borderRadius: 5,
              keyboardType: TextInputType.phone,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Country',
              hintText: 'United Kingdom',
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            Text(
              'Skills',
              style: textStyle(
                fontSize: 12,
                color: rBlack60,
              ),
            ),
            yHeight(8),
            SkillsRow(
              text: 'Senior Graphic Designer',
              onDelete: () {},
            ),
            yHeight(16),
            SkillsRow(
              text: 'Senior Copywriter',
              onDelete: () {},
            ),
            yHeight(16),
            DarkOutlinedButton(onPressed: () {}, text: 'Add more skill'),
            yHeight(40),
            RoundButton(onPressed: () {}, text: 'Save Changes'),
          ],
        ),
      ),
    );
  }
}
