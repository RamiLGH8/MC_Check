import 'package:flutter/material.dart';
import 'package:mc_check/util/Button.dart';
import 'package:mc_check/util/Colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //a little mc logo if you guys thinks you can work on it better change it
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/MC_BLUE.png",
                  scale: 40,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //the scan image
            Image.asset(
              "assets/qr1.png",
              scale: 2,
            ),
            const SizedBox(height: 80),

            ScanButton(),
          ],
        ),
      )),
    );
  }
}
