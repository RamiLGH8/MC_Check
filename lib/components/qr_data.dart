import 'package:flutter/material.dart';
import 'package:mc_check/util/colors.dart';

Widget QrData(String email, String fullName) {
  return Container(
    height: 250,
    width: 300,
    
     decoration: BoxDecoration(
       gradient: LinearGradient(colors: [blue, secondBlue]),
        borderRadius: BorderRadius.circular(20),
     ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fullName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          email,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    )
  );
}
