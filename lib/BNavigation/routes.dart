import 'package:flutter/material.dart';
import 'package:rentnow/pages/loginPage.dart';
import 'package:rentnow/BNavigation/page1.dart';
import 'package:rentnow/BNavigation/page2.dart';
import 'package:rentnow/BNavigation/page3.dart';
import 'package:rentnow/BNavigation/page4.dart';
import 'package:rentnow/main.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Page1(),
      Page2(),
      Page3(),//const Page3(),
      Page4(),
    ];
    return myList[index];
  }
}