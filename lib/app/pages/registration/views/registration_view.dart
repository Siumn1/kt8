import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt8/app/routes/app_pages.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 563, right: 566),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Registration",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            const SizedBox(height: 56),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(244, 204, 204, 204)),
              // margin:
              //     const EdgeInsets.only(top: 173, left: 563, right: 566),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        hintText: "Email adress",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
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
                        hintText: "New password",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(131, 131, 131, 1)),
                      )),
                  const SizedBox(height: 20),
                  TextField(
                      controller: controller.passRepController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            borderRadius: BorderRadius.circular(12)),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        hintText: "Confirm the password",
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
                        onPressed: () => controller.registration(),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: (Color.fromARGB(244, 0, 0, 0))),
                        child: const Text(
                          "Confirm registration",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        )),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                "If you have an account",
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed(Routes.LOGIN),
              child: const Text("Click here!",
                  style: TextStyle(color: Color.fromARGB(244, 255, 255, 255))),
            )
          ],
        ),
      ),
    );
  }
}
