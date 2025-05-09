import 'package:delivery_app_figmaa/screens/Sign_up_page.dart';
import 'package:delivery_app_figmaa/screens/home_screen.dart';
import 'package:delivery_app_figmaa/screens/lottie_demo.dart';
import 'package:delivery_app_figmaa/screens/onboarding_1_screen.dart';
import 'package:delivery_app_figmaa/screens/otp_screen.dart';
import 'package:delivery_app_figmaa/screens/sign_in_page.dart';
import 'package:delivery_app_figmaa/screens/splash_screen.dart';
import 'package:delivery_app_figmaa/screens/tab_bar.dart';
import 'package:flutter/material.dart';

import 'demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tab_Bar_2(),
    );
  }
}
