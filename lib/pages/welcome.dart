import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/pages/onboarding/welldata.dart';
import 'package:meytrash_mobile/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final controller = WelcomeData();
  final pageController = PageController();
  bool isLastPage = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: warnaPutih,
        padding: const EdgeInsets.only(bottom: 40),
        child: isLastPage
            ? mulai()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: controller.items.length,
                    effect: WormEffect(
                      activeDotColor: warnaUtama,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ],
              ),
      ),
      body: PageView.builder(
        onPageChanged: (index) =>
            setState(() => isLastPage = controller.items.length - 1 == index),
        itemCount: controller.items.length,
        controller: pageController,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(controller.items[index].image),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 340,
                height: 29,
                child: Text(
                  controller.items[index].title,
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                width: 340,
                height: 50,
                child: Text(
                  controller.items[index].description,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget mulai() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: warnaUtama,
      ),
      width: 200,
      height: 55,
      child: TextButton(
        onPressed: () {
          Get.toNamed('/login');
        },
        child: Text(
          'Get Started',
          style: GoogleFonts.poppins(
            color: warnaPutih,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
