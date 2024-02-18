// ignore_for_file: no_leading_underscores_for_local_identifiers, unnecessary_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meytrash_mobile/pages/signIn/signin_controller.dart';
import 'package:meytrash_mobile/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController namecontroller =
        SignInController().nameController;
    final TextEditingController passcontroller =
        SignInController().textPassController;
    final ControllerPassword controllerpass = Get.put(ControllerPassword());
    final _formState = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: SizedBox(
                  width: 190,
                  child: Image.asset('assets/images/MeyTrash.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formState,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Masuk Ke Akun Anda",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: namecontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Masukkan Email Kamu',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: warnaUtama,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email Harus Terisi";
                        }
                        RegExp emailvalid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if (!emailvalid.hasMatch(value)) {
                          return "Email Tidak Valid";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(
                      () => TextFormField(
                        controller: passcontroller,
                        obscureText:
                            controllerpass.isLoginPasswordVisible.value,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Masukkan Password Kamu',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controllerpass.togglePasswordVisibility();
                            },
                            icon: Icon(
                                controllerpass.isLoginPasswordVisible.value
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                          ),
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
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed('/lupapass');
                        },
                        child: Text(
                          'Lupa Password ?',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: warnaHitam,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warnaUtama,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          if (_formState.currentState!.validate()) {
                            Get.toNamed('/bottomnavigation');
                          }
                        },
                        child: Text(
                          'MASUK',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: warnaPutih,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun?',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/daftar');
                          },
                          child: Text(
                            'Daftar',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: warnaUtama,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
