import 'package:flutter/material.dart';
import 'package:payapp/Views/Mainpage/botton_section.dart';
import 'package:payapp/Views/Mainpage/middle_section.dart';
import 'package:payapp/Views/Mainpage/upper_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            UpperSection(),
            MiddleSection(),
            BottomSection()
          ],
        ),
      ),
    );
  }
}
