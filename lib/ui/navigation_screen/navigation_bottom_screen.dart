import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ourcourseapp/core/utils/base/base_controller.dart';
import 'package:ourcourseapp/core/utils/base/base_statefull.dart';
import 'package:ourcourseapp/core/utils/device_utils.dart';
import 'package:ourcourseapp/ui/navigation_screen/components/navigation_bottom_bar.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends BaseState<NavigationScreen> {
  final List<Widget> _pageList = [
    // const HomeScreen(),
    // const CartScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: BaseController.navigationController.navigationScaffoldKey,
      // drawer: const CustomDrawer(),
      body: Obx(
            () => SizedBox(
          height: DeviceUtils.getHeight(context),
          child: _pageList[
          BaseController.navigationController.selectedIndex.value],
        ),
      ),
      bottomNavigationBar: const NavigationBottomBar(),
      extendBody: true,
    );
  }
}
