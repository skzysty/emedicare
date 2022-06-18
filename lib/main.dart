import 'package:emedicare/pages/home_page.dart';
import 'package:emedicare/registration.dart';
import 'package:emedicare/registrationp2.dart';
import 'package:emedicare/screens/chathomePage.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'widgets/Dropdown/dropcountry.dart';
import 'registrationp3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
