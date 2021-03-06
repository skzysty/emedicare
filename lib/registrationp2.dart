// // ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, sort_child_properties_last
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:emedicare/services/auth_services.dart';
// import 'package:emedicare/registration.dart';
// import 'package:emedicare/registrationp3.dart';
// import 'package:emedicare/widgets/DatePicker.dart';
// import 'package:emedicare/widgets/Dropdown/custom_GDropdown.dart';
// import 'package:flutter/material.dart';
// import 'package:emedicare/widgets/primary_button.dart';
// import 'package:provider/provider.dart';
// import 'theme.dart';
// import 'widgets/Dropdown/birthday.dart';
//
// class RegisterPage2 extends StatefulWidget {
//   @override
//   _RegisterPageState2 createState() => _RegisterPageState2();
// }
//
// class _RegisterPageState2 extends State<RegisterPage2> {
//   DateTime date = DateTime.now();
//   TextEditingController _fnameController = new TextEditingController();
//   TextEditingController _mnameController = new TextEditingController();
//   TextEditingController _lnameController = new TextEditingController();
//   TextEditingController _phoneController = new TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Let us know\nyou!',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 40,
//                       )),
//                   SizedBox(
//                     height: 5,
//                   ),
//                 ],
//               ),
//
//               //First name
//               SizedBox(
//                 height: 32,
//               ),
//               Form(
//                 child: Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         color: textWhiteGrey,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 20.0),
//                         child: TextFormField(
//                           controller: _fnameController,
//                           decoration: InputDecoration(
//                             hintText: 'First Name',
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: textWhiteGrey,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 20.0),
//                         child: TextFormField(
//                           controller: _mnameController,
//                           decoration: InputDecoration(
//                             hintText: 'Middle Name',
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: textWhiteGrey,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 20.0),
//                         child: TextFormField(
//                           controller: _lnameController,
//                           decoration: InputDecoration(
//                             hintText: 'Last Name',
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       alignment: Alignment.topLeft,
//                       child: Padding(
//                         padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
//                         child: GDropdown(),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//
//                     //DatePicker
//                     Row(
//                       children: [
//                         Container(
//                           width: 165,
//                           height: 60,
//                           child: OutlinedButton(
//                             style: ButtonStyle(
//                               shape: MaterialStateProperty.all<
//                                   RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(50.0)),
//                               ),
//                             ),
//                             onPressed: () async {
//                               DateTime? newDate = await showDatePicker(
//                                   context: context,
//                                   initialDate: date,
//                                   firstDate: DateTime(1930),
//                                   lastDate: DateTime(2025));
//                               if (newDate == null) return;
//                               setState(() => date = newDate);
//                             },
//                             child: Padding(
//                               padding: const EdgeInsets.only(right: 50.0),
//                               child: Text(
//                                 'Birthday',
//                                 style: TextStyle(
//                                     fontSize: 16, color: Colors.black12),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Container(
//                           width: 165,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: textWhiteGrey,
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Padding(
//                               padding: const EdgeInsets.only(right: 30.0),
//                               child: Text(
//                                 '${date.year}/${date.month}/${date.day}',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.black45,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//
//                     SizedBox(
//                       height: 5,
//                     ),
//
//                     Container(
//                       decoration: BoxDecoration(
//                         color: textWhiteGrey,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 20.0),
//                         child: TextFormField(
//                           controller: _phoneController,
//                           decoration: InputDecoration(
//                             hintText: 'Phone',
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//
//
//               Container(
//                 height: 40,
//                 width: MediaQuery.of(context).size.width / 3,
//                 color: Colors.blue,
//                 child: FlatButton(
//                   onPressed: () {
//                     final String fname = _fnameController.text.trim();
//                     final String mname = _mnameController.text.trim();
//                     final String lname = _lnameController.text.trim();
//                     final String phone = _phoneController.text.trim();
//
//
//                     if(fname.isEmpty){
//                       print("First Name is Empty");
//                     } else {
//                       if(mname.isEmpty){
//                         print("Middle Name is Empty");
//                     } else {
//                     if(lname.isEmpty){
//                     print("Last Name is Empty");
//                     } else {
//                     if(phone.isEmpty){
//                     print("Phone is Empty");
//                       } else {
//                         context.read<AuthService>().signUp(
//                           fname,
//                           mname,
//                           lname,
//                           phone,
//                         ).then((value) async {
//                           User? user = FirebaseAuth.instance.currentUser;
//
//                           await FirebaseFirestore.instance.collection("users").doc(user?.uid).set({
//                             'uid': user?.uid,
//                             'email': email,
//                             'password': password,
//                           });
//                         });
//                       }
//                     }
//                   },
//                   child: Text("SIGN UP"),
//                 ),
//
//
//
//
//               //Temporary Button
//
//               // Row(
//               //   children: [
//               //     Container(
//               //       alignment: Alignment.center,
//               //       child: ElevatedButton(
//               //         onPressed: () => Navigator.push(
//               //           context,
//               //           MaterialPageRoute(
//               //             builder: (context) => RegisterPage3(),
//               //           ),
//               //         ),
//               //         style: TextButton.styleFrom(
//               //           backgroundColor: Color(0xff2972ff),
//               //         ),
//               //         child: Text("Next"),
//               //       ),
//               //     ),
//               //   ],
//               // ),
//
//               SizedBox(
//                 height: 25,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
