import 'package:emedicare/registration.dart';
import 'package:emedicare/registrationp2.dart';
import 'package:flutter/material.dart';
import 'widgets/Dropdown/dropcountry.dart';
// import 'login_page.dart';
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
      home: RegisterPage2(),
    );
  }
}
