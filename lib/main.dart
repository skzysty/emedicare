import 'package:emedicare/registration.dart';
import 'package:flutter/material.dart';
import 'widgets/dropcountry.dart';
// import 'login_page.dart';
import 'almost_done.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlmostDone(),
    );
  }
}
