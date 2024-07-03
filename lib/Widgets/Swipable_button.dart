import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SwipableButton extends StatefulWidget {
  const SwipableButton({super.key});

  @override
  State<SwipableButton> createState() => _SwipableButtonState();
}

class _SwipableButtonState extends State<SwipableButton> {
  @override
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SwipeableButtonView(
        buttonText: 'SLIDE TO PAYMENT',
        buttonWidget: Container(
          child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
        ),
        activeColor: Color(0xFF009C41),
        isFinished: isFinished,
        onWaitingProcess: () {
          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isFinished = true;
            });
          });
        },
        onFinish: () async {
          // Handle the swipe action (both left and right)
          print('Swiped!');

          // TODO: For reverse ripple effect animation
          setState(() {
            isFinished = false;
          });
        },
      ),
    );
  }
  }

