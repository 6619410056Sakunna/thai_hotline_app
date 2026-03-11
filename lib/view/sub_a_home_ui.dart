import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/models/hotline.dart';
import 'package:url_launcher/url_launcher.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<Hotline> hotlines = [
    Hotline(
      name: 'กรมทางหลวงชนบท',
      phone: '1146',
      image: 'A1.png',
    ),
    Hotline(
      name: 'ตำรวจท่องเที่ยว',
      phone: '1155',
      image: 'A2.png',
    ),
    Hotline(
      name: 'ตำรวจทางหลวง',
      phone: '1193',
      image: 'A3.png',
    ),
    Hotline(
      name: 'ข้อมูลจราจร',
      phone: '1197',
      image: 'A4.png',
    ),
    Hotline(
      name: 'ขสมก.',
      phone: '1348',
      image: 'A5.png',
    ),
    Hotline(
      name: 'บขส.',
      phone: '1490',
      image: 'A6.png',
    ),
    Hotline(
      name: 'เส้นทางบนทางด่วน',
      phone: '1543',
      image: 'A7.png',
    ),
    Hotline(
      name: 'กรมทางหลวง',
      phone: '1586',
      image: 'A8.png',
    ),
    Hotline(
      name: 'การรถไฟแห่งประเทศไทย',
      phone: '1690',
      image: 'A9.png',
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
            Image(
              image: AssetImage('assets/images/Ah.png'),
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                itemCount: hotlines.length,
                itemBuilder: (context, index) {
                  final hotline =
                      hotlines[index];
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
