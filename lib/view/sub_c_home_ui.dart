import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/models/hotline.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<Hotline> hotlines = [
    Hotline(
      name: 'ธนาคารกรุงเทพ',
      phone: '1333',
      image: 'C1.png',
    ),
    Hotline(
      name: 'ธนาคารออมสิน',
      phone: '1115',
      image: 'C2.png',
    ),
    Hotline(
      name: 'ธนาคารกสิกรไทย',
      phone: '028888888',
      image: 'C3.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงไทย',
      phone: '021111111',
      image: 'C4.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงศรีอยุธยา',
      phone: '1572',
      image: 'C5.png',
    ),
    Hotline(
      name: 'ธนาคารทีเอ็มบีธนชาต',
      phone: '1428',
      image: 'C6.png',
    ),
    Hotline(
      name: 'ธนาคารCitybank',
      phone: '1588',
      image: 'C7.png',
    ),
    Hotline(
      name: 'LH Bank',
      phone: '1327',
      image: 'C8.png',
    ),
    Hotline(
      name: 'ธอส.',
      phone: '026459000',
      image: 'C9.png',
    ),
    Hotline(
      name: 'ธนาคารไทยพาณิชย์',
      phone: '027777777',
      image: 'C10.png',
    ),
    Hotline(
      name: 'KIATNAKINPHATRA',
      phone: '021655555',
      image: 'C11.png',
    ),
    Hotline(
      name: 'ธนาคารไทยเครดิต',
      phone: '026975454',
      image: 'C12.png',
    ),
    Hotline(
      name: 'UOB',
      phone: '022851555',
      image: 'C13.png',
    ),
    Hotline(
      name: 'TISCO',
      phone: '026336000',
      image: 'C14.png',
    ),
    Hotline(
      name: 'ธนาคารอิสลาม',
      phone: '022042766',
      image: 'C15.png',
    ),
    Hotline(
      name: 'ธนาคารซีไอเอ็มบีไทย',
      phone: '026267777',
      image: 'C16.png',
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
              'ธนาคาร',
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
                image: AssetImage('assets/images/Ch.jpg'),
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