import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/models/hotline.dart';
import 'package:url_launcher/url_launcher.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<Hotline> hotlines = [
    Hotline(
      name: 'เหตุด่วนเหตุร้าย',
      phone: '191',
      image: 'B1.png',
    ),
    Hotline(
      name: 'แจ้งไฟไหม้สัตว์เข้าบ้าน',
      phone: '199',
      image: 'B2.png',
    ),
    Hotline(
      name: 'สายด่วนรถหาย(ตำรวจแห่งชาติ)',
      phone: '1192',
      image: 'B1.png',
    ),
    Hotline(
      name: 'อุบัติเหตุทางน้ำ',
      phone: '1196',
      image: 'B3.png',
    ),
    Hotline(
      name: 'แจ้งคนหาย',
      phone: '1300',
      image: 'B4.png',
    ),
    Hotline(
      name: 'ศูนย์ปลอดภัยคมนาคม',
      phone: '1356',
      image: 'B5.png',
    ),
    Hotline(
      name: 'หน่วแพทย์กู้ชีพ',
      phone: '1554',
      image: 'B6.png',
    ),
    Hotline(
      name: 'ศูนย์เอรวัณ',
      phone: '1646',
      image: 'B7.png',
    ),
    Hotline(
      name: 'เจ็บป่วยฉุกเฉิน',
      phone: '1669',
      image: 'B8.png',
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
              'อุบัติเหตุ-เหตุฉุกเฉิน',
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
                image: AssetImage('assets/images/Bh.png'),
                width: 250,
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