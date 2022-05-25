import 'package:flutter/material.dart';
import 'package:emedicare/theme.dart';

class CheckboxForm extends StatefulWidget {
  @override
  _CheckboxFormState createState() => _CheckboxFormState();
}

class _CheckboxFormState extends State<CheckboxForm> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isChecked ? primaryBlue : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
          border: isChecked ? null : Border.all(color: textGrey, width: 1.5),
        ),
        width: 20,
        height: 20,
        child: isChecked
            ? Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              )
            : null,
      ),
    );
    ;
  }
}
