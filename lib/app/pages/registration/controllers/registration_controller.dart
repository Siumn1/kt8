import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt8/app/data/services/authService.dart';

import '../../../routes/app_pages.dart';

void showSnackBar(String message, {isError = true}) {
  Get.showSnackbar(GetSnackBar(
    message: message,
    backgroundColor: isError ? const Color.fromARGB(255, 0, 0, 0) : Colors.green,
    duration: const Duration(seconds: 1),
  ));
}

class RegistrationController extends GetxController {
  AuthService authService = Get.find();
  var mailController = TextEditingController();
  var passController = TextEditingController();
  var passRepController = TextEditingController();

  void registration() async {
    if (passController.text != passRepController.text) {
      showSnackBar("Password is uncorrect");
      return;
    }

    if (!mailController.text.contains("@") | (passController.text.length < 8)) {
      showSnackBar("Invalid email");
      return;
    }
    bool res = await authService.registration(
        mailController.text, passController.text);
    if (res) {
      authService.isLoggedIn = true;
      Get.toNamed(Routes.HOME);
      showSnackBar("Registration is successful", isError: false);
    } else {
      showSnackBar('Registration is unsucessful');
    }
  }
}
