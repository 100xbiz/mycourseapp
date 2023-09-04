import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ourcourseapp/core/constants/color_constants.dart';


class SplashTitle extends StatelessWidget {
  const SplashTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Our Course App",
      style: context.textTheme.titleLarge?.copyWith(
        color: kWhiteColor,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
