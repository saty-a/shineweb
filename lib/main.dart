import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'app/app_binding.dart';
import 'app/data/values/constants.dart';
import 'app/data/values/env.dart';
import 'app/routes/app_pages.dart';
import 'app/styles/app_colors.dart';
import 'app/theme/app_theme.dart';
import 'firebase_options.dart';

void main() async {
  /// Ensuring Size of the phone in UI Design
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.primary, // navigation bar color
    statusBarColor: AppColors.primary, // status bar color
  ));

  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      GetMaterialApp(
        title: Env.title,
        navigatorKey: GlobalKeys.navigationKey,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        initialRoute: Routes.SPLASH,
        getPages: AppPages.pages,
        defaultTransition: Transition.fade,
        initialBinding: AppBinding(),
      ));
}