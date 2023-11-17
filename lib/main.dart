import 'package:flutter/material.dart';
import 'package:mc_check/Pages/HomePage.dart';
import 'package:mc_check/Pages/ScanPage.dart';
import 'package:mc_check/Pages/Sliders.dart';
//import 'package:mc_check/Pages/ScanPage.dart';

void main() {
  runApp(const MyApp());
}

bool isUsed = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Micro check',
      /* so i declared a boolean an set it to false,
       so the sliders will be showed only in the first time the app get opened */
      home: isUsed ? const HomePage() : const Sliders(),
      routes: {
        "scan page": (context) => const Scan(),
        "home page": (context) => const HomePage(),
      },
    );
  }
}
