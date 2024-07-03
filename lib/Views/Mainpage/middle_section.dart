// middle_section.dart
import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.payment), // Payables icon
        Icon(Icons.favorite), // Donate icon
        Icon(Icons.people), // Recipients icon
        Icon(Icons.local_offer), // Offers icon
      ],
    );
  }
}
