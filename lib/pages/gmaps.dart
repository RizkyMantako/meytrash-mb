import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/theme.dart';

class GmapsPage extends StatelessWidget {
  const GmapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnaUtama,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_rounded, color: warnaPutih)),
        centerTitle: true,
        title: Text(
          'Tambah Alamat',
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: warnaPutih,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
