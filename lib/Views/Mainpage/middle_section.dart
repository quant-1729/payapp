// middle_section.dart
import 'package:flutter/material.dart';
import 'package:payapp/Utils/constants.dart';

class MiddleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Iconbox('Assests/icons8-bill-96.png'),
          Iconbox('Assests/icons8-donate-96.png'),
          Iconbox('Assests/icons8-offer-96.png'),
          Iconbox('Assests/icons8-user-groups-96.png'),
        ],
      ),
    );
  }

  Widget Iconbox(String route){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),

      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ImageIcon(
            AssetImage(route),
            size: 40,

            ) ),
      ),
    );
  }
}
