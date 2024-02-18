import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:meytrash_mobile/battnav.dart';
import 'package:meytrash_mobile/pages/detailedukasi.dart';
import 'package:meytrash_mobile/pages/donasi.dart';
import 'package:meytrash_mobile/pages/edukasi.dart';
import 'package:meytrash_mobile/pages/gmaps.dart';
import 'package:meytrash_mobile/pages/homescreen.dart';
import 'package:meytrash_mobile/pages/lupapassword.dart';
import 'package:meytrash_mobile/pages/profil.dart';
import 'package:meytrash_mobile/pages/proses.dart';
import 'package:meytrash_mobile/pages/riwayat.dart';
import 'package:meytrash_mobile/pages/sampah.dart';
import 'package:meytrash_mobile/pages/sigin.dart';
import 'package:meytrash_mobile/pages/signup.dart';
import 'package:meytrash_mobile/pages/splash.dart';
import 'package:meytrash_mobile/pages/transaksi_sukses.dart';
import 'package:meytrash_mobile/pages/welcome.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );

  runApp(const Meytrash());
}

class Meytrash extends StatelessWidget {
  const Meytrash({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const Splash()),
        GetPage(name: '/welcome', page: () => const Welcome()),
        GetPage(name: '/daftar', page: () => const SignUpPage()),
        GetPage(name: '/login', page: () => const SignInPage()),
        GetPage(name: '/home', page: () => HomePage( )),
        GetPage(name: '/sampah', page: () => SampahPage()),
        GetPage(name: '/donasi', page: () => DonasiPage()),
        GetPage(name: '/edukasi', page: () => const EdukasiPage()),
        GetPage(name: '/riwayat', page: () => const RiwayatPage()),
        GetPage(name: '/proses', page: () => ProsesPage()),
        GetPage(name: '/gmaps', page: () => const GmapsPage()),
        GetPage(name: '/detailedu', page: () => const DetaileduPage()),
        GetPage(name: '/profil', page: () => const ProfilPage()),
        GetPage(name: '/bottomnavigation', page: () => Battnav()),
        GetPage(name: '/sukses', page: () => const TransSuk()),
        GetPage(name: '/lupapass', page: () => const LupaPasswordPage()),
      ],
    );
  }
}
