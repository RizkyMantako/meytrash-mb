import 'package:get/get.dart';

class LupaPasswordController extends GetxController {
  var passwordVisible = true.obs;

  void togglePasswordVisibility() {
    passwordVisible.toggle();
  }
}

class ConfirmLupaPassController extends GetxController {
  var repasswordVisible = true.obs;

  void tombolPasswordVisibility() {
    repasswordVisible.toggle();
  }
}
