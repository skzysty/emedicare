// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emedicare/util/doctor.dart';
import 'package:emedicare/util/service_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  void initState() {
    _controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue[350],
          title: new Text(
            'E-Medicare',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          leading: new Icon(Icons.menu),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.person), onPressed: (null)),
          ],
          elevation: 10.0,
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: new TabBar(
            controller: _controller,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.home),
              ),
              new Tab(
                icon: new Icon(Icons.supervisor_account),
              ),
              new Tab(
                icon: new Icon(Icons.add),
              ),
              new Tab(
                icon: new Icon(Icons.notifications),
              ),
              new Tab(
                icon: new Icon(Icons.message),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(children: [

          SizedBox(height: 10),

          // search bar
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'Search something',
                    ),
                  ))),

          SizedBox(height: 20),

          // card -> message
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Consult Online?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Fill out the online consultation form',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text('Take me there'),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),

          SizedBox(height: 10),

          // horizonal listeview -> categories
          Container(
            height: 80,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              ServiceCard(
                serviceCategory: 'Out-Patient',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Emergency Department',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Pediatrics',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Internal Medicine',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'OB-Gyne',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Surgery',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Anesthesia',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Laboratory',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Radiology',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Medicine',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Rehabilitation',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Dental',
                iconImagePath: 'lib/icons/doctor.png',
              ),
              ServiceCard(
                serviceCategory: 'Covid',
                iconImagePath: 'lib/icons/doctor.png',
              ),
            ]),
          ),

          SizedBox(height: 25),
          //doctor list

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctor List',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Doctor(
                  doctorImagePath: 'lib/images/doctor1.jpg',
                  rating: '5.0',
                  doctorName: 'Dr. Jubelle S. Neo',
                  doctorProfession: 'Surgeon',
                ),
                Doctor(
                  doctorImagePath:
                      'lib/images/ashkan-forouzani-DPEPYPBZpB8-unsplash.jpg',
                  rating: '5.0',
                  doctorName: 'Dr. S. Wong Soap',
                  doctorProfession: 'Dermatologist',
                ),
                Doctor(
                  doctorImagePath:
                      'lib/images/bruno-rodrigues-279xIHymPYY-unsplash.jpg',
                  rating: '5.0',
                  doctorName: 'Dr.Abdhul Salsalani',
                  doctorProfession: 'Dentist',
                ),
                Doctor(
                  doctorImagePath:
                      'lib/images/rian-ramirez-rm7rZYdl3rY-unsplash.jpg',
                  rating: '5.0',
                  doctorName: 'Dr. Kwak kwak',
                  doctorProfession: 'Physician',
                ),
                Doctor(
                  doctorImagePath:
                      'lib/images/usman-yousaf-SakqLf78KVo-unsplash.jpg',
                  rating: '5.0',
                  doctorName: 'Dr. En I. Tee',
                  doctorProfession: 'Washing Machine Specialist',
                ),
              ],
            ),
          )
        ])));
  }
}
