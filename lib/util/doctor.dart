import 'package:emedicare/util/icon_and_text.dart';
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
            borderRadius: BorderRadius.circular(30),
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
                Wrap(
                  children: List.generate(5, (index) => Icon(Icons.star, color: Colors.lightBlue[300], size: 15,)
                )
                ),
                SizedBox(width: 10,),
                Text(
                    rating,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500],
                  ),
                ),
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

            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                IconandTextWidget(icon: Icons.circle_sharp,
                    text: 'Available',
                    iconColor: Colors.blue),
                SizedBox(width: 5,),
                IconandTextWidget(icon: Icons.location_on,
                    text: '1.2km',
                    iconColor: Colors.green),
                SizedBox(width: 5,),
                IconandTextWidget(icon: Icons.access_time_rounded,
                    text: 'Offline',
                    iconColor: Colors.red)
              ],
            )
          ],
        ),
    ),
      );
  }
}
