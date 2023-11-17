import 'package:flutter/material.dart';
import 'package:mc_check/Pages/Slider1.dart';
import 'package:mc_check/Pages/Slider2.dart';
import 'package:mc_check/Pages/Slider3.dart';
import 'package:mc_check/util/Colors.dart';

class Sliders extends StatelessWidget {
  const Sliders({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: const [Slide1(), Slide2(), Slide3()],
      ),
    );
  }
}
