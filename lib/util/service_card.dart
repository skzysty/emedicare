import 'dart:developer';

import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final iconImagePath;
  final String serviceCategory;

  ServiceCard({
    required this.iconImagePath,
    required this.serviceCategory,
  });

  // const ServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[350],
          ),
          child: Row(
            children: [
              Image.asset(
                iconImagePath,
                height: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(serviceCategory),
            ],
          ),
        )
    );
  }
}
