import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController textPassController = TextEditingController();
}

class ControllerPassword extends GetxController {
  var isLoginPasswordVisible = true.obs;

  void togglePasswordVisibility() {
    isLoginPasswordVisible.toggle();
  }
}
