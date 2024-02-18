// ignore_for_file: deprecated_member_use, unused_element

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetaileduPage extends StatelessWidget {
  const DetaileduPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnaUtama,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: warnaPutih,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Detail Artikel',
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: warnaPutih,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: SizedBox(
                  child: Center(
                    child: Text(
                      'Indonesia Peringkat 4 Food Waste Terbanyak di Dunia',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: warnaHitam,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/images/berter1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Kompas.com',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: warnaAbuGelap,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '   Food waste atau mubazir makanan adalah makanan yang siap disantap tapi terbuang begitu saja dan menjadi sampah. Dilansir dari Statista, food waste atau mubazir makanan yang dihasilkan sektor rumah tangga di Indonesia pada 2020 mencapai 20,94 juta metrik ton.\n\n   Secara berurutan, total mubazir makanan Indonesia berada di bawah China dengan 91,65 juta metrik ton, India dengan 68,76 juta metrik ton, dan Nigeria dengan 37,94 juta metrik ton. Data tersebut dirilis Statista lewat kerja sama dengan United Nations Environment Programme (UNEP) atau Program Lingkungan Perserikatan Bangsa-Bangsa (PBB). \n\n   Pada 2019, populasi global memproduksi sekitar 931 juta metrik ton limbah makanan. Jumlah ini setara dengan 17 persen dari total makanan yang ada.',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: warnaHitam,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      'Lebih Lengkap : ',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      ),
                    ),
                    source(),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget source() {
  final Uri url = Uri.parse(
      'https://lestari.kompas.com/read/2023/05/16/190000086/indonesia-peringkat-4-food-waste-terbanyak-di-dunia#:~:text=Danur%20Lambang%20Pristiandaru&text=KOMPAS.com%20%E2%80%93%20Indonesia%20menempati%20peringkat,begitu%20saja%20dan%20menjadi%20sampah.');
  return TextButton(
      onPressed: () {
        launchUrl(url);
      },
      child: Text(
        'Klik Disini',
        style: GoogleFonts.poppins(
          fontSize: 15,
          color: Colors.blue,
        ),
      ));
}
