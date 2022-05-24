// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:emedicare/theme.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1930),
        lastDate: DateTime(2025));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          ),
        ),
        onPressed: _showDatePicker,
        child: Padding(
          padding: const EdgeInsets.only(right: 60.0),
          child: Text(
            'Birthday',
            style: TextStyle(color: Colors.black45),
          ),
        ),
      ),
    );
  }
}
