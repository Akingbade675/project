import 'package:flutter/material.dart';
import 'package:renaisi_project/features/authentication/view/widgets/sign_in_or_sign_up_link_text.dart';

import '../../../../core/size_config/responsiveness.dart';
import 'custom_text_field.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    Responsive().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            const CustomTextField(
              title: 'Name',
              hintText: 'Name',
              maxLine: 1,
              keyboardType: TextInputType.text,
            ),
            yHeight(1.5),
            const CustomTextField(
              title: 'Address',
              hintText: 'Address',
              maxLine: 2,
              keyboardType: TextInputType.text,
            ),
            yHeight(1.5),
            const CustomTextField(
              title: 'Password',
              hintText: 'Password',
              maxLine: 1,
              keyboardType: TextInputType.text,
              obscure: true,
            ),
            yHeight(1.5),
            const CustomTextField(
              title: 'Email',
              hintText: 'Email',
              maxLine: 1,
              keyboardType: TextInputType.emailAddress,
            ),
            yHeight(1.5),
            const SignLinkText(text: "Don't have an account?", buttonText: 'sign up')
          ],
        ),
      ),
    );
  }
}
