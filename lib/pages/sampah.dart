import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meytrash_mobile/pages/sampah/sampah_controller.dart';
import 'package:meytrash_mobile/theme.dart';

class SampahPage extends StatelessWidget {
  SampahPage({super.key});

  final SampahController sampahController = Get.put(SampahController());

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
          'Daur Ulang',
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: warnaPutih,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: double.infinity,
              color: warnaKedua,
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                ImagePicker imagePicker = ImagePicker();
                _tampilImagePickerOptions(
                    context, imagePicker, sampahController);
              },
              child: Container(
                  height: 200,
                  width: 220,
                  decoration: BoxDecoration(
                    color: warnaKeempat,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: warnaUtama,
                      width: 2,
                    ),
                  ),
                  child: Obx(() {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: sampahController.selectedImage.value != null
                          ? Image.file(
                              sampahController.selectedImage.value!,
                              height: 200,
                              width: 220,
                              fit: BoxFit.cover,
                            )
                          : Icon(
                              Icons.image,
                              size: 30,
                              color: warnaAbuGelap,
                            ),
                    );
                  })),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Upload Foto Sampahmu',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Deskripsi (Opsional)',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                maxLines: 4,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Masukkan Deskripsi",
                  labelStyle: GoogleFonts.poppins(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: warnaUtama,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Alamat',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Pilih Alamat',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    items: <String>[
                      'Alamat 1',
                      'Tambah Alamat',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue == 'Tambah Alamat') {
                        Get.toNamed('/gmaps');
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: 200,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: warnaUtama,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Get.toNamed('/sukses');
                  },
                  child: Text(
                    "Setor Sampah",
                    style: GoogleFonts.poppins(
                      color: warnaPutih,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
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

void _tampilImagePickerOptions(BuildContext context, ImagePicker imagePicker,
    SampahController signUpController) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 20),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Camera'),
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
