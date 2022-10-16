import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/widgets/authWidgets/auth_text_field.dart';
import 'package:renaisi_project/core/widgets/image_holder.dart';
import 'package:renaisi_project/core/widgets/round_button.dart';

class EmployerEditProfileScreen extends StatefulWidget {
  const EmployerEditProfileScreen({super.key});

  @override
  State<EmployerEditProfileScreen> createState() =>
      _EmployerEditProfileScreenState();
}

class _EmployerEditProfileScreenState extends State<EmployerEditProfileScreen> {
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
              text: 'Upload Logo',
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
                      hintText: 'Maria',
                      borderRadius: 5,
                      keyboardType: TextInputType.name),
                ),
                xWidth(8),
                const Expanded(
                  flex: 5,
                  child: AuthTextField(
                      title: 'Last Name',
                      hintText: 'Kenneth',
                      borderRadius: 5,
                      keyboardType: TextInputType.name),
                ),
              ],
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Business Name',
              hintText: 'Business Name',
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Address',
              hintText: 'Address',
              maxLine: 4,
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Contact Number',
              hintText: '+1 248 934 1028',
              borderRadius: 5,
              keyboardType: TextInputType.phone,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Sector',
              hintText: 'mariaken@gmail.com',
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Email',
              hintText: 'mariaken@gmail.com',
              borderRadius: 5,
              keyboardType: TextInputType.emailAddress,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'Website Name',
              hintText: 'Website Name',
              borderRadius: 5,
              keyboardType: TextInputType.text,
            ),
            yHeight(16),
            const AuthTextField(
              title: 'PostCode',
              hintText: '94025',
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
            yHeight(42),
            RoundButton(
              onPressed: () {},
              text: 'Save Changes',
              textWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
