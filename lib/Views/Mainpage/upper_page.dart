// upper_section.dart
import 'package:flutter/material.dart';
import 'package:payapp/Utils/constants.dart';
import 'package:payapp/Widgets/Swipable_button.dart';

class UpperSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
      color: AppColor.Background_blue,
      child: Column(
        children: [
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hey James', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.white
                    ),),
                    Text('What would you like to do today?', style: TextStyle(

                        fontSize: 14,
                        color: Colors.white
                    ),),

                  ],
                ), // User name goes here
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user_image.png'),
                  radius: 30,
                ),
                 // Custom swipe button widget
              ],
            ),
          ),
          Center(
            child: SwipableButton(),
          )
        ],
      ),
    );
  }
}
