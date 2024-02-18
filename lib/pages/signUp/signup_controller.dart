import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class SignUpController extends GetxController {
  Rx<File?> selectedImage = Rx<File?>(null);

  Future<void> pickImageFromGallery(ImagePicker imagePicker) async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
      update(); // Perbarui state
    }
  }

  Future<void> captureImageFromCamera(ImagePicker imagePicker) async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
      update(); // Perbarui state
    }
  }
}

class PasswordController extends GetxController {
  var isPasswordVisible = true.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.toggle();
  }
}

class ConfirmPassController extends GetxController {
  var iniPasswordVisible = true.obs;

  void tombolPasswordVisibility() {
    iniPasswordVisible.toggle();
  }
}
