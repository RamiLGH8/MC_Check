import 'package:flutter/material.dart';

Widget QrData(String email, String fullName) {
  return Container(
    height: 250,
    width: 300,
    
     decoration: BoxDecoration(
       gradient: LinearGradient(colors: [Colors.blue, const Color.fromARGB(255, 123, 164, 198)]),
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
