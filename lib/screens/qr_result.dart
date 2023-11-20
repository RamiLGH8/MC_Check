import 'package:flutter/material.dart';
import 'package:mc_check/components/qr_data.dart';
class QrResult extends StatefulWidget {
  const QrResult({super.key});

  @override
  State<QrResult> createState() => _QrResultState();
}

class _QrResultState extends State<QrResult> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
           child: Scaffold(
                     body: Center(child: QrData('ramilgh1604@gmail.com', 'Rami Leghrib'),))),
    );
  }
}