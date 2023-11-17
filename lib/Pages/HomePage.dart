import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Image.asset(
              "assets/qr1.png",
              scale: 2,
            ),
            const SizedBox(height: 80),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'scan page');
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: buttonColor,
                ),
                child: Center(
                  child: Text(
                    "Scan QR code",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade900,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
