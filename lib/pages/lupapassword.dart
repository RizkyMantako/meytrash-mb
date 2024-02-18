// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/pages/lupapassword/lupapass_controller.dart';
import 'package:meytrash_mobile/theme.dart';

class LupaPasswordPage extends StatelessWidget {
  const LupaPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LupaPasswordController lupapass = Get.put(LupaPasswordController());
    final ConfirmLupaPassController confirmlupapass =
        Get.put(ConfirmLupaPassController());
    final TextEditingController lupapasswordController =
        TextEditingController();
    final TextEditingController lupapasswordController2 =
        TextEditingController();
    final _formulirState = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnaUtama,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_rounded, color: warnaPutih),
        ),
        centerTitle: true,
        title: Text(
          'Ganti Password',
          style: GoogleFonts.poppins(
            color: warnaPutih,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 300,
                  child: Image.asset(
                    'assets/images/lupaPassword.gif',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Perbaharui Password Kamu',
              style: GoogleFonts.poppins(),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () {
                return Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formulirState,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: lupapasswordController,
                          obscureText: lupapass.passwordVisible.value,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Password Baru',
                            labelStyle: GoogleFonts.poppins(),
                            prefixIcon: const Icon(Icons.key_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  lupapass.togglePasswordVisibility();
                                },
                                icon: Icon(lupapass.passwordVisible.value
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: warnaUtama,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password Harus Terisi";
                            } else if (value != lupapasswordController.text) {
                              return "Periksa Kembali Password Anda";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Obx(
                          () => TextFormField(
                            controller: lupapasswordController2,
                            obscureText:
                                confirmlupapass.repasswordVisible.value,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Ualangi Password',
                              labelStyle: GoogleFonts.poppins(),
                              prefixIcon: const Icon(Icons.key_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    confirmlupapass.tombolPasswordVisibility();
                                  },
                                  icon: Icon(
                                      confirmlupapass.repasswordVisible.value
                                          ? Icons.visibility_off
                                          : Icons.visibility)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: warnaUtama,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password Harus Terisi";
                              } else if (value != lupapasswordController.text) {
                                return "Periksa Kembali Password Anda";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: warnaUtama,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              if (_formulirState.currentState!.validate()) {
                                Get.toNamed('/login');
                              }
                            },
                            child: Text(
                              'SIMPAN',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: warnaPutih,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
