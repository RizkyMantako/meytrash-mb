import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/theme.dart';

class ProsesPage extends StatelessWidget {
  const ProsesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Proses',
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: warnaPutih,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: TabBar(
            tabs: const <Widget>[
              Tab(text: 'Daur Ulang'),
              Tab(text: 'Donasi'),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: warnaKedua,
            indicatorWeight: 5,
            labelColor: warnaPutih,
            unselectedLabelColor: warnaPutih,
            labelStyle: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: TabBarView(children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              color: warnaKetiga,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Container(
                                alignment: Alignment.center,
                                width: 85,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'assets/images/sampah1.png',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tanggal',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    '12 juli',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Berat Makanan',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    '3 Kg',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Column(
                                children: [
                                  Text(
                                    'Poin',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    '30',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 65,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: warnaUtama,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sukses',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: warnaPutih,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Center(
            child: Text(
              "Belum ada riwayat transaksi",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
