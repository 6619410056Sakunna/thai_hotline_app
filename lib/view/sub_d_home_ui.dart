import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/models/hotline.dart';
import 'package:url_launcher/url_launcher.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

class _SubDHomeUiState extends State<SubDHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<Hotline> hotlines = [
    Hotline(
      name: 'การไฟฟ้านครหลวง',
      phone: '1130',
      image: 'D1.png',
    ),
    Hotline(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      phone: '1129',
      image: 'D2.png',
    ),
    Hotline(
      name: 'การไฟฟ้าฝ่ายผลิต',
      phone: '1416',
      image: 'D3.png',
    ),
    Hotline(
      name: 'การประปานครหลวง',
      phone: '1125',
      image: 'D4.png',
    ),
    Hotline(
      name: 'การประปาส่วนภูมิภาค',
      phone: '1662',
      image: 'D5.png',
    ),
    Hotline(
      name: 'TURE',
      phone: '1242',
      image: 'D6.png',
    ),
    Hotline(
      name: 'DTAC',
      phone: '1678',
      image: 'D7.png',
    ),
    Hotline(
      name: 'AIS',
      phone: '1175',
      image: 'D8.png',
    ),
    Hotline(
      name: 'TOT',
      phone: '1100',
      image: 'D9.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'สายด่วน',
              style: GoogleFonts.sarabun(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            Text(
              'การเดินทาง',
              style: GoogleFonts.sarabun(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage('assets/images/Dh.png'),
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                itemCount: hotlines.length,
                itemBuilder: (context, index) {
                  final hotline =
                      hotlines[index]; // ดึงข้อมูลตัวที่ index ออกมา
                  return Card(
                    elevation: 3,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      onTap: () {
                        _makePhoneCall(hotline.phone!);
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/${hotline.image}',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        hotline.name!,
                        style: GoogleFonts.sarabun(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(hotline.phone!),
                    
                      trailing: IconButton(
                        icon: const Icon(Icons.phone, color: Color.fromARGB(255, 2, 65, 4)),
                        onPressed: () {
                          _makePhoneCall(hotline.phone!);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}