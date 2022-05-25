import 'package:emedicare/widgets/Dropdown/allergies.dart';
import 'package:emedicare/widgets/Dropdown/dropwhois.dart';
import 'package:emedicare/widgets/Dropdown/howlongsymptom.dart';
import 'package:emedicare/widgets/Dropdown/takemed.dart';
import 'package:emedicare/widgets/Dropdown/whatsymptoms.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

class FormD extends StatefulWidget {
  @override
  _FormDState createState() => _FormDState();
}

class _FormDState extends State<FormD> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[350],
        title: new Text(
          'Consultation Form',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              //contentPadding: EdgeInsets.all(<some value here>),//change for side padding ,
              title: Row(
                children: <Widget>[
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Bikol"),
                  )),
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Filipino"),
                  )),
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("English"),
                  )),
                ],
              ),
            ),
            SizedBox(height: 50),
            Text('Who is Experiencing these Symptoms?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            Container(
              decoration: BoxDecoration(
                color: textWhiteGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: WhoSymptoms(),
            ),
            SizedBox(height: 10),
            Text('What is the symptoms that concerns you?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            Container(
              decoration: BoxDecoration(
                color: textWhiteGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: WthatSymptoms(),
            ),
            SizedBox(height: 10),
            Text('How long have you felt this?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            Container(
              decoration: BoxDecoration(
                color: textWhiteGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: HowlongSymptoms(),
            ),
            SizedBox(height: 10),
            Text('Do you have any Allergies?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            Container(
              decoration: BoxDecoration(
                color: textWhiteGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Allergies(),
            ),
            SizedBox(height: 10),
            Text('Do you have any Medical Conditions?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            Container(
              decoration: BoxDecoration(
                color: textWhiteGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Allergies(),
            ),
            SizedBox(height: 10),
            Text('Are you currently taking medications?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            Container(
              decoration: BoxDecoration(
                color: textWhiteGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TakeMed(),
            ),
            SizedBox(height: 10),
            //CheckboxListTile(

            // ),
          ],
        ),
      ),
    );
  }
}
