
import 'package:flutter/material.dart';
import 'package:ourcourseapp/ui/splash/components/splash_logo.dart';
import 'package:ourcourseapp/ui/splash/components/splash_title.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SplashLogo(),
          SplashTitle(),
        ],
      ),
    );
  }
}
