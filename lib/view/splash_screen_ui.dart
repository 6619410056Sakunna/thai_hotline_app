import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/view/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUi(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 242),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/P.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'THAI HOTLINE APP',
              style: GoogleFonts.sarabun(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height:5),
            Text(
              'สายด่วน',
              style: GoogleFonts.sarabun(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              color: Colors.brown[500],
            ),
          ],
        ),
      ),
    );
  }
}
