import 'package:emedicare/widgets/Barangay.dart';
import 'package:emedicare/widgets/dropcity.dart';
import 'package:emedicare/widgets/dropcountry.dart';
import 'package:emedicare/widgets/postal_code.dart';
import 'package:emedicare/widgets/street.dart';
import 'package:flutter/material.dart';
import 'package:emedicare/widgets/primary_button.dart';
import 'theme.dart';

//this is a comment
class AlmostDone extends StatefulWidget {
  @override
  _AlmostDoneState createState() => _AlmostDoneState();
}

class _AlmostDoneState extends State<AlmostDone> {
  bool passwordVisible = false;
  bool passwordConfrimationVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

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
              CustomPrimaryButton(
                buttonColor: primaryBlue,
                textValue: 'Continue',
                textColor: Colors.white,
              ),
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
