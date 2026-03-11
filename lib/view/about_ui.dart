import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: Text(
          'สายด่วน Thailand',
          style: GoogleFonts.sarabun(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'ผู้จัดทำ',
              style: GoogleFonts.sarabun(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('assets/images/sau.png'),
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'มหาวิทยาลัยเอเชียอาคเนย์',
              style: GoogleFonts.sarabun(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(3), // ความหนาของเส้นขอบ
              decoration: BoxDecoration(
                color: Colors.brown[600], // สีของเส้นขอบ
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/pf.jpg'),

              ),
            ),
            SizedBox(height: 20),
            Text(
              '6619410056',
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'สกุลณา แสงรัศมี',
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              's6619410056@sau.ac.th',
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'สาขา คอมพิวเตอร์',
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'คณะ วิศวกรรมศาสตร์',
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Colors.brown[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
