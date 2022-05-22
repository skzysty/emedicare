import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  Doctor({
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(12),
          ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
              height: 100,
            ),
            ),

            SizedBox(
                height: 05,
            ),
            //rating out of 5

            Row(
              children: [
                Icon(Icons.star,
                color: Colors.yellow[600],
                ),
                Text(rating),
              ],
            ),
            SizedBox(height: 05),

            //doctor name
            Text(
              doctorName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
                height: 5,
            ),

            //doctor title
            Text(doctorProfession),
          ],
        ),
    ),
      );
  }
}
