import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kt8/app/data/services/apiService.dart';
import 'package:kt8/app/data/services/authService.dart';
import 'package:kt8/app/routes/app_pages.dart';

class LoginController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();
  var mailController = TextEditingController();
  var passController = TextEditingController();
  login() async {
    bool response = await authService.login(mailController.text, passController.text);
    if(response == true)  {
      authService.isLoggedIn = true;
      Get.toNamed(Routes.HOME);
      print('Login is successful');
    } else {
      print('Login is unsuccessful');
    }
  }
  toRegistration()=> Get.toNamed(Routes.REGISTRATION);
}