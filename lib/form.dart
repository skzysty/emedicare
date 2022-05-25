import 'package:flutter/material.dart';

class FormD extends StatefulWidget {
  @override
  _FormDState createState() => _FormDState();
}

class _FormDState extends State<FormD> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    child: Text("Filipino"),
                  )),
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("English"),
                  )),
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Mandarine"),
                  )),
                  SizedBox(height: 10),
                  Text('Who is')
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('Who is')
          ],
        ),
      ),
    );
  }
}
