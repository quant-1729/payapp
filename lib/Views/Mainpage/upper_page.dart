// upper_section.dart
import 'package:flutter/material.dart';

class UpperSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Text('Hey James'), // User name goes here
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // User image (CircleAvatar) goes here
              CircleAvatar(
                backgroundImage: AssetImage('assets/user_image.png'),
              ),
               // Custom swipe button widget
            ],
          ),
        ],
      ),
    );
  }
}
