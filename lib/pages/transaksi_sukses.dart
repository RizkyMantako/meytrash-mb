import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/theme.dart';

class TransSuk extends StatelessWidget {
  const TransSuk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnaUtama,
        centerTitle: true,
        title: Text(
          'Transaksi Sukses',
          style: GoogleFonts.poppins(
            color: warnaPutih,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/Celebration.gif',
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Terimakasih Telah Berkontribusi Untuk Kesehatan Lingkungan\n KAMU HEBAT !",
              style: GoogleFonts.poppins(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: warnaUtama,
            ),
            onPressed: () {
              Get.offNamed('/bottomnavigation');
            },
            child: Text(
              'Kembali Ke Dashboard',
              style: GoogleFonts.poppins(fontSize: 15, color: warnaPutih),
            ),
          )
        ],
      ),
    );
  }
}
