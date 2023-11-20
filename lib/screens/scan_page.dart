import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mc_check/util/colors.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class Scanpage extends StatefulWidget {
  const Scanpage({Key? key});

  @override
  State<Scanpage> createState() => _ScanPageState();
}

class _ScanPageState extends State<Scanpage> {
  String? qrData; // Variable to store the scanned QR code data

  Future _qrscanner() async {
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isGranted) {
      String? scannedData = await scanner.scan();
      _handleScannedData(scannedData);
    } else {
      var isGranted = await Permission.camera.request();

      if (isGranted.isGranted) {
        String? scannedData = await scanner.scan();
        _handleScannedData(scannedData);
      }
    }
  }

  void _handleScannedData(String? scannedData) {
    setState(() {
      qrData = scannedData; // Set the scanned data to the qrData variable
    });

    // Check if the scanned data is a valid URL
    if (Uri.parse(scannedData!).isAbsolute) {
      _launchURL(scannedData);
    }
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  void _copyToClipboard() {
    if (qrData != null && qrData!.isNotEmpty) {
      Clipboard.setData(ClipboardData(text: qrData!));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Copied to clipboard'),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }

  Future<void> _initCamera() async {
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isGranted) {
      _qrscanner();
    } else {
      var isGranted = await Permission.camera.request();
      if (isGranted.isGranted) {
        _qrscanner();
      } else {
        // Handle the case when camera permission is denied
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 23,
                            ),
                            SizedBox(
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 23,
                            ),
                            Text(
                              "Scan QR Code",
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            
              SizedBox(
                height: 202,
              ),
              Center(
                child: Image(
                  image: AssetImage('assets/Generate.png'),
                  height: 200,
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _initCamera();
                    _qrscanner();
                  },
                  child: Text("Scan for QR Code",
                      style: TextStyle(color: Colors.black87)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onLongPress: _copyToClipboard,
                child: Center(
                  child: Text(
                    qrData ?? "",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
