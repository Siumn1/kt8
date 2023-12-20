import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt8/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 560, right: 560),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                textAlign: TextAlign.center,
                "Login page",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            const SizedBox(height: 56),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(244, 204, 204, 204)),
              child: Column(
                children: [
                  const SizedBox(height: 0),
                  TextField(
                    controller: controller.mailController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: const Color.fromRGBO(255, 255, 255, 1),
                        hintText: "Your email",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(131, 131, 131, 1))),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                      controller: controller.passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(131, 131, 131, 1)),
                      )),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () => controller.login(),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: (Color.fromARGB(244, 0, 0, 0))),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        )),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                "If you don't have an account,",
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed(Routes.REGISTRATION),
              child: const Text("Register a new one",
                  style: TextStyle(color: Color.fromARGB(244, 255, 255, 255))),
            )
          ],
        ),
      ),
    );
  }
}
