import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/theme.dart';

class EdukasiPage extends StatelessWidget {
  const EdukasiPage({Key? key}) : super(key: key);

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
          'Edukasi',
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: warnaPutih,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/tirai2.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 30),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Waste Education',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: warnaPutih,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Temukan informasi berharga \ntentang food waste',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: warnaPutih,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Informasimu Disini',
                        labelStyle: GoogleFonts.poppins(),
                        hintStyle: GoogleFonts.poppins(),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: warnaUtama,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: warnaUtama,
                            width: 2,
                          ),
                        ),
                        prefixIcon: const Icon(Icons.search_rounded),
                      ),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Berita Untukmu',
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const SemuaInformasi(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class SemuaInformasi extends StatelessWidget {
  const SemuaInformasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (_, index) {
            return Container(
              width: 140,
              height: 220,
              decoration: BoxDecoration(
                color: warnaPutih,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                elevation: 2,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/detailedu');
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          color: Colors.white,
                        ),
                        child: Image.asset('assets/images/berter2.png'),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Judul Berita",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'sumber.com',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
