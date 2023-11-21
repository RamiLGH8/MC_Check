import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mc_check/screens/scan_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future _splash() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Scanpage()));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splash();
    
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, const Color.fromRGBO(92, 166, 176, 1)])),
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/MC_WHITE.png',
                    width: 140,
                    height: 140,
                  ),
                  Text(
                    ' Check',
                    style: GoogleFonts.vinaSans(
                       fontSize: 70,
                       fontWeight: FontWeight.w700,
                       color: Colors.white,
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
