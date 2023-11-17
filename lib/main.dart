import 'package:flutter/material.dart';
import 'package:mc_check/Pages/HomePage.dart';
import 'package:mc_check/Pages/ScanPage.dart';
//import 'package:mc_check/Pages/ScanPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Micro check',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        "scan page": (context) => const Scan(),
      },
    );
  }
}
