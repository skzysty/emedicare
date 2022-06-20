// ignore_for_file: deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emedicare/widgets/custom_checkbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:emedicare/services/auth_services.dart';
import 'package:provider/provider.dart';
import 'package:emedicare/login_page.dart';
import 'package:emedicare/registrationp2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  final referenceDatase = FirebaseDatabase.instance;

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
                  Text('Create new\nAccount',
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
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: regular16pt.copyWith(color: textGrey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage(),
                          )
                        );
                      },
                      child: Text(
                        'Log in here',
                        style: regular16pt.copyWith(color: primaryBlue),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            size: 21,
                          ),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 21,
                          ),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: textWhiteGrey,
                    //     borderRadius: BorderRadius.circular(50),
                    //   ),
                    //   child: TextFormField(
                    //     obscureText: !passwordConfrimationVisible,
                    //     decoration: InputDecoration(
                    //       prefixIcon: Icon(
                    //         Icons.lock,
                    //         size: 21,
                    //       ),
                    //       hintText: 'Confirm Password',
                    //       suffixIcon: IconButton(
                    //         color: textGrey,
                    //         splashRadius: 1,
                    //         icon: Icon(passwordConfrimationVisible
                    //             ? Icons.visibility_outlined
                    //             : Icons.visibility_off_outlined),
                    //         onPressed: () {
                    //           setState(() {
                    //             passwordConfrimationVisible =
                    //                 !passwordConfrimationVisible;
                    //           });
                    //         },
                    //       ),
                    //       border: OutlineInputBorder(
                    //         borderSide: BorderSide.none,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),


          Container(
            height: 40,
            width: MediaQuery.of(context).size.width / 3,
            color: Colors.blue,
            child: FlatButton(
              onPressed: () {
                final String email = _emailController.text.trim();
                final String password = _passwordController.text.trim();


                if(email.isEmpty){
                  print("Email is Empty");
                } else {
                  if(password.isEmpty){
                    print("Password is Empty");
                  } else {
                    context.read<AuthService>().signUp(
                      email,
                      password,
                    ).then((value) async {
                      User? user = FirebaseAuth.instance.currentUser;

                      await FirebaseFirestore.instance.collection("users").doc(user?.uid).set({
                        'uid': user?.uid,
                        'email': email,
                        'password': password,
                      });
                      Fluttertoast.showToast(msg: "Account created successfully :) ");
                    });
                  }
                }
              },
              child: Text("SIGN UP"),
            ),

          //Temporary Button

          // Container(
          //   alignment: Alignment.center,
          //   child: ElevatedButton(
          //     onPressed: () => Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => RegisterPage2(),
          //       ),
          //     ),
          //     style: TextButton.styleFrom(
          //       backgroundColor: Color(0xff2972ff),
          //     ),
          //     child: Text("Sign Up"),
          //   ),
          ),

//Main Button after data fetching

              // CustomPrimaryButton(
              //   buttonColor: primaryBlue,
              //   textValue: 'Sign Up',
              // //   textColor: Colors.white,
              // ),


              // SizedBox(
              //   height: 25,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     CustomCheckbox(),
              //     SizedBox(
              //       width: 12,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'By creating an account, you agree to our',
              //           style: regular16pt.copyWith(color: textGrey),
              //         ),
              //         Text(
              //           'Terms & Conditions',
              //           style: regular16pt.copyWith(color: primaryBlue),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
