import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:graduation_project/constant/color.dart';
import 'package:graduation_project/constant/font_size.dart';
import 'package:graduation_project/controller/home_ctrl.dart';
import 'package:graduation_project/view/caticoreis.dart';
import 'package:graduation_project/view/charts.dart';
import 'package:graduation_project/widget/home/navigation_bar.dart';

class MianScreen extends StatelessWidget {
  MianScreen({super.key});
  final ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO /////////////// Start Application Bar /////////////////////
      appBar: AppBar(
        leadingWidth: 25.0.wp,
        toolbarHeight: 15.0.wp,
        backgroundColor: transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/nadim.jpg'),
            ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 3.0.wp),
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 50,
            height: 50,
          ),
        ),
      ),

      //TODO ////////////// Start The Naavigation Bar //////////////////

      bottomNavigationBar: const NavBar(),

      //TODO ///////////////////// body //////////////////////////
      body: GetBuilder<HomeController>(
        builder: (controller) => [
          //! /////////////////// Chart Page //////////////////////
          Center(child: ChartPage()),

          //! ////////////////// Home Page //////////////////////
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),

          //! ///////////////// Catigories ///////////////////
          const Ctigories(),
        ][ctrl.currentIndex],
      ),
    );
  }
}
