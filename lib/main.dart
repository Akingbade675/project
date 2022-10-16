import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/widgets/authWidgets/auth_text_field.dart';
import 'package:renaisi_project/core/widgets/authWidgets/sign_up_now_screen.dart';
import 'package:renaisi_project/core/widgets/authWidgets/welcome_back_screen.dart';
import 'package:renaisi_project/core/widgets/round_button.dart';
import 'package:renaisi_project/customer/auth/view/pages/homepage_screen.dart';
import 'package:renaisi_project/customer/auth/view/pages/sign_up_screen.dart';
import 'package:renaisi_project/customer/profile/pages/view/pages/edit_profile_screen.dart';
import 'package:renaisi_project/customer/profile/pages/view/pages/others_profile_screen.dart';
import 'package:renaisi_project/customer/profile/pages/view/pages/profile_screen.dart';
import 'package:renaisi_project/staff/profile/pages/edit_profile_screen.dart';

import 'employer/profile/pages/edit_profile_screen.dart';
import 'employer/profile/pages/others_profile_screen.dart';
import 'employer/profile/pages/profile_screen.dart';
import 'staff/profile/pages/others_profile_screen.dart';
import 'staff/profile/pages/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Profile Screen'),
          ),
          body: Builder(builder: (context) {
            Responsive().init(context);
            return EmployerOthersProfileScreen();
          }),
        )
        //home: HomeScreen(),
        );
  }
}
