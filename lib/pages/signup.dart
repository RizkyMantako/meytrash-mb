// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meytrash_mobile/pages/signUp/signup_controller.dart';
import 'package:meytrash_mobile/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignUpController signUpController = Get.put(SignUpController());
    final PasswordController passcontroller = Get.put(PasswordController());
    final ConfirmPassController confirmpass = Get.put(ConfirmPassController());
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController noTelepon = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController passwordController2 = TextEditingController();
    final _formState = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  "Selamat datang di",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: warnaAbuGelap,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 171,
              height: 25,
              child: Image.asset(
                'assets/images/MeyTrash.png',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Obx(
                      () {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(75),
                          child: signUpController.selectedImage.value != null
                              ? Image.file(
                                  signUpController.selectedImage.value!,
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                )
                              : Image.network(
                                  "https://www.sandcanyoncc.com/wp-content/uploads/2020/03/no-profile-picture-icon-15.png",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200, top: 65),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: warnaUtama,
                    ),
                    child: IconButton(
                      onPressed: () {
                        ImagePicker imagePicker = ImagePicker();
                        _showImagePickerOptions(
                            context, imagePicker, signUpController);
                      },
                      icon: Icon(
                        Icons.add,
                        color: warnaPutih,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formState,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Nama',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nama Kamu',
                        labelStyle: GoogleFonts.poppins(),
                        prefixIcon: const Icon(Icons.person_outline),
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
                          return "Nama Harus Terisi";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Email Kamu',
                        labelStyle: GoogleFonts.poppins(),
                        prefixIcon: const Icon(Icons.mail_outline),
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
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'No Telepon',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      controller: noTelepon,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Masukkan No Hp Kamu',
                        labelStyle: GoogleFonts.poppins(),
                        prefixIcon: const Icon(Icons.phone_outlined),
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
                          return "No Telepon Harus Terisi";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Obx(
                      () => TextFormField(
                        controller: passwordController,
                        obscureText: passcontroller.isPasswordVisible.value,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Password Kamu',
                          labelStyle: GoogleFonts.poppins(),
                          prefixIcon: const Icon(Icons.key_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                passcontroller.togglePasswordVisibility();
                              },
                              icon: Icon(passcontroller.isPasswordVisible.value
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
                          } else if (value.length < 8) {
                            return "Minimal 8 Karakter";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Re-Password',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Obx(
                      () => TextFormField(
                        controller: passwordController2,
                        obscureText: confirmpass.iniPasswordVisible.value,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Ulangi Password Kamu',
                          labelStyle: GoogleFonts.poppins(),
                          prefixIcon: const Icon(Icons.key_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                confirmpass.tombolPasswordVisibility();
                              },
                              icon: Icon(confirmpass.iniPasswordVisible.value
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
                            return "Re-Password Harus Terisi";
                          } else if (value != passwordController.text) {
                            return "Periksa Kembali Password Anda";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
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
                          'SIMPAN',
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
                          'Sudah punya akun?',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/login');
                          },
                          child: Text(
                            'Masuk',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: warnaUtama,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showImagePickerOptions(BuildContext context, ImagePicker imagePicker,
      SignUpController signUpController) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Galeri'),
                onTap: () async {
                  await signUpController.pickImageFromGallery(imagePicker);
                  Get.back();
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Kamera'),
                onTap: () async {
                  await signUpController.captureImageFromCamera(imagePicker);
                  Get.back();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
