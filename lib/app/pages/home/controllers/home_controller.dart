import 'package:get/get.dart';
import 'package:kt8/app/data/services/apiService.dart';
import 'package:kt8/app/data/services/authService.dart';


class HomeController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();
  
  Future<void> getUser() async {
    var res = await apiService.getUser();
    welcometext.value=res;
  }
  RxString welcometext = "Welcome back!".obs;

  void logout() {
    authService.logout();
  }
  @override
  void onReady() {
    getUser();
    super.onReady();
  }
}