import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/view/about_ui.dart';
import 'package:thai_hotline_app/view/sub_a_home_ui.dart';
import 'package:thai_hotline_app/view/sub_b_home_ui.dart';
import 'package:thai_hotline_app/view/sub_c_home_ui.dart';
import 'package:thai_hotline_app/view/sub_d_home_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int currentIndexStatus = 1;

  List<Widget> showBody = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        title: Text(
          'สายด่วน Thailand',
          style: GoogleFonts.sarabun(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
       
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUi(),
                ),
              );
            },
            icon: const Icon(
              Icons.info_outline, 
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) => {
          setState(() {
            currentIndexStatus = value;
          }),
        },
        currentIndex: currentIndexStatus,
        selectedItemColor: Colors.brown[600],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
              ),
              label: 'การเดินทาง'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle_notifications_rounded,
              ),
              label: 'อุบัติเหตุ-เหตุฉุกเฉิน'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.monetization_on_outlined,
              ),
              label: 'ธนาคาร'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_work_outlined,
              ),
              label: 'สาธารณูปโภค'),
        ],
      ),
      body: showBody[currentIndexStatus],
    );
  }
}
