import 'package:flutter/material.dart';
import 'package:ourcourseapp/core/constants/color_constants.dart';
import 'package:ourcourseapp/core/utils/device_utils.dart';
import 'package:ourcourseapp/ui/navigation_screen/components/navigation_bottom_item.dart';


class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceUtils.getDynamicHeight(context, 0.08),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: kLightTextPrimaryColor,
        borderRadius: BorderRadius.circular(36.0),
      ),
      child:  const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationItemBottom(index: 0, icon: "assets/images/home.svg"),
          NavigationItemBottom(index: 1, icon: "assets/images/cart.svg"),

        ],
      ),
    );
  }
}
