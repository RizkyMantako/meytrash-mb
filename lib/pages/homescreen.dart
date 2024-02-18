import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/pages/card/cardclass.dart';
import 'package:meytrash_mobile/pages/card/carddata.dart';
import 'package:meytrash_mobile/theme.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final CardBerter beritaterbarucontrol = CardBerter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/tiraiAtas.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: warnaAbuterang,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            'https://awsimages.detik.net.id/community/media/visual/2022/08/29/robert-lewandowski-3.jpeg?w=1200',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hallo, Selamat Datang',
                            style: GoogleFonts.poppins(
                              color: warnaPutih,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Robert Lewandowski',
                            style: GoogleFonts.poppins(
                                color: warnaPutih,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160, left: 30, right: 30),
                  child: Center(
                    child: SizedBox(
                      width: 310,
                      child: Image.asset('assets/images/cardUtama.png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fitur',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/sampah');
                        },
                        child: SizedBox(
                          width: 150,
                          height: 70,
                          child: Image.asset('assets/images/buttonDaur2.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/edukasi');
                        },
                        child: SizedBox(
                          width: 150,
                          height: 70,
                          child:
                              Image.asset('assets/images/buttonEdukasi2.png'),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/donasi');
                        },
                        child: SizedBox(
                          width: 150,
                          height: 70,
                          child: Image.asset('assets/images/buttonDonasi2.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/riwayat');
                        },
                        child: SizedBox(
                          width: 150,
                          height: 70,
                          child:
                              Image.asset('assets/images/buttonRiwayat2.png'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Berita Terbaru',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SizedBox(
                height: 215,
                width: double.infinity,
                child: Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: beritaterbarucontrol.items.length,
                    itemBuilder: (context, index) {
                      CardBerpop berita = beritaterbarucontrol.items[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: BeritaTerbaru(
                            image: berita.image,
                            title: berita.title,
                            source: berita.source),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed('/edukasi');
                    },
                    child: Text(
                      'Selengkapnya',
                      style: GoogleFonts.poppins(
                        color: warnaHitam,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: warnaHitam),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () async {
                  // await FlutterLaunch.launchWhatsapp(
                  //     phone: '6285210387370',
                  //     message:
                  //         'Hallo Kak saya dari MeyTrash, saat ini sedang ada kendala pada aplikasi');
                },
                child: Image.asset(
                  'assets/images/kontakPc.png',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

// kelas untuk card

class BeritaTerbaru extends StatelessWidget {
  final String image;
  final String title;
  final String source;

  const BeritaTerbaru({
    super.key,
    required this.image,
    required this.title,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/detailedu');
        },
        child: Container(
          height: 220,
          width: 140,
          decoration: BoxDecoration(
            color: warnaPutih,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 140,
                width: 140,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      child: Text(
                        title,
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
                    child: SizedBox(
                      child: Text(
                        source,
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
