import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:meytrash_mobile/controller/bottnav_controller.dart';
import 'package:meytrash_mobile/pages/homescreen.dart';
import 'package:meytrash_mobile/pages/profil.dart';
import 'package:meytrash_mobile/pages/proses.dart';
import 'package:meytrash_mobile/theme.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Battnav extends StatelessWidget {
  Battnav({super.key});

  final BottnavController controllet = Get.put(BottnavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: controllet.animateToTab,
        controller: controllet.pageController,
        physics: const BouncingScrollPhysics(),
        children: [
          HomePage(),
          const ProsesPage(),
          const ProfilPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomAppBarItem(
                  context,
                  icon: IconlyBold.home,
                  page: 0,
                  label: "Home",
                ),
                _bottomAppBarItem(
                  context,
                  icon: Icons.timeline_rounded,
                  page: 1,
                  label: "Proses",
                ),
                _bottomAppBarItem(
                  context,
                  icon: IconlyBold.profile,
                  page: 2,
                  label: "Profil",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(
    BuildContext context, {
    required icon,
    required page,
    required label,
  }) {
    return ZoomTapAnimation(
      onTap: () => controllet.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Icon(
              icon,
              color: controllet.currentPage.value == page
                  ? WarnaTema.warnaUtama
                  : Colors.grey,
            ),
            Text(
              label,
              style: GoogleFonts.poppins(
                  color: controllet.currentPage.value == page
                      ? WarnaTema.warnaUtama
                      : Colors.grey,
                  fontWeight: controllet.currentPage.value == page
                      ? FontWeight.w600
                      : null),
            )
          ],
        ),
      ),
    );
  }
}
