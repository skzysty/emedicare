// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:emedicare/screens/chatPage.dart';
import 'package:flutter/material.dart';

class ChatHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.blue,
        ),
        child: new BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 159, 198, 233),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: "Call",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
