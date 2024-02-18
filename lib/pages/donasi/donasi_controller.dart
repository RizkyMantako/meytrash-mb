import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DonasiController extends GetxController {
  Rx<File?> selectedImage = Rx<File?>(null);

  Future<void> captureImageFromCamera(ImagePicker imagePicker) async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
      update(); // Perbarui state
    }
  }
}
