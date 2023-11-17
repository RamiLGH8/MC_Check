import 'package:flutter/material.dart';
import 'package:mc_check/main.dart';
import 'package:mc_check/util/Colors.dart';

class Slide3 extends StatelessWidget {
  const Slide3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "home page");
          isUsed = true;
        },
        child: Container(
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: buttonColor,
          ),
          child: Text("get started or whatever"),
        ),
      )),
    );
  }
}
