import 'package:flutter/material.dart';
import 'package:renaisi_project/core/size_config/responsiveness.dart';
import 'package:renaisi_project/core/widgets/authWidgets/auth_text_field.dart';

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
      home: Scaffold()
    );
  }
}
