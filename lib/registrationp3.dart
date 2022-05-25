import 'package:emedicare/login_page.dart';
import 'package:emedicare/widgets/Dropdown/barangay.dart';
import 'package:emedicare/widgets/Dropdown/dropcity.dart';
import 'package:emedicare/widgets/Dropdown/dropcountry.dart';
import 'package:emedicare/widgets/Dropdown/postal_code.dart';
import 'package:emedicare/widgets/Dropdown/street.dart';
import 'package:flutter/material.dart';
import 'package:emedicare/widgets/primary_button.dart';
import 'theme.dart';

//this is a comment
class RegisterPage3 extends StatefulWidget {
  @override
  _RegisterPage3State createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 100.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("You're almost \n done!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Form(
                child: Column(
                  children: [
                    Country(),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: City(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: PostalCode(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Barangay(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Street(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

              //Temporary Button

              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff2972ff),
                  ),
                  child: Text("Sign Up"),
                ),
              ),

              // CustomPrimaryButton(
              //   buttonColor: primaryBlue,
              //   textValue: 'Continue',
              //   textColor: Colors.white,
              // ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
