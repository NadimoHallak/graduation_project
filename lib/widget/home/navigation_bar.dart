import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:graduation_project/constant/color.dart';
import 'package:graduation_project/constant/font_size.dart';
import 'package:graduation_project/controller/home_ctrl.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => FloatingNavbar(
        currentIndex: controller.currentIndex,
        itemBorderRadius: 20.0.wp,
        borderRadius: 20.0.wp,
        iconSize: 7.0.wp,
        backgroundColor: lightPurple,
        selectedItemColor: lightPurple,
        onTap: (int val) {
          controller.onChangePage(val);
        },
        items: [
          FloatingNavbarItem(
            icon: Icons.bar_chart_rounded,
          ),
          FloatingNavbarItem(
            icon: Icons.home,
          ),
          FloatingNavbarItem(
            icon: Icons.apps_rounded,
          ),
        ],
      ),
    );
  }
}
