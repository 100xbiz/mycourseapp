import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ourcourseapp/core/constants/color_constants.dart';
import 'package:ourcourseapp/ui/splash/components/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAll(() => const NavigationScreen());
    });
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kLightBlueColor,
      body: SplashBody(),
    );
  }
}
