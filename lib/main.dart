import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ourcourseapp/core/constants/string_constants.dart';
import 'package:ourcourseapp/core/constants/theme_constants.dart';

import 'ui/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        locale: Get.deviceLocale,
        fallbackLocale: const Locale("en", "US"),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        home: const SplashScreen(),
      ),
    );
  }
}
