import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shineweb/app/data/values/images.dart';
import 'package:shineweb/app/data/values/strings.dart';

import '../../../styles/app_colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                AppStrings.appName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                AppStrings.loginInfo,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: Get.height * 0.3),
              MaterialButton(
                onPressed: () {
                  controller.login();
                },
                color: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Image.asset(
                        Images.icGoogle,
                        height: 40,
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        AppStrings.continueWithGoogle,
                        style: TextStyle(fontSize: 16,color: AppColors.primary)
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
