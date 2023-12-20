import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt8/app/data/services/apiService.dart';
import 'package:kt8/app/data/services/authService.dart';
import 'package:kt8/app/data/services/storageService.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => AuthService().init());
  await Get.putAsync(() => ApiService().init());
}
