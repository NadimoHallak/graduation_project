import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/constant/color.dart';
import 'package:graduation_project/constant/font_size.dart';
import 'package:graduation_project/constant/font_style.dart';
import 'package:graduation_project/constant/onboding_list.dart';
import 'package:graduation_project/controller/ctrl_onbording.dart';
import 'package:graduation_project/view/main_page.dart';
import 'package:graduation_project/widget/onbording/slider.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: gradiant),
      child: Scaffold(
        backgroundColor: transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(
              child: Text(
                'تخطي',
                style: myStyle(textSize: 15, textColor: white),
              ),
              onPressed: () {
                Get.offAll(MianScreen());
              },
            ),
          ],
        ),
        body: GetBuilder<CtrlOnbordingImp>(
          init: CtrlOnbordingImp(),
          builder: (ctrl) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45.0.wp,
                ),

                //////////// Grid View ////////////
                const Expanded(
                  flex: 2,
                  child: MySlider(),
                ),

                //////////// Animated Container ////////////
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //////////// Next Button ////////////
                      TextButton(
                        child: Text(
                          'أكمل',
                          style: myStyle(
                            textColor: white,
                            textSize: 17,
                            weight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          ctrl.next();
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            onbording.length,
                            (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              width: ctrl.currentPage == index ? 18 : 10,
                              height: ctrl.currentPage == index ? 18 : 10,
                              margin:
                                  const EdgeInsets.only(right: 10, left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2, color: white),
                                color: ctrl.currentPage == index
                                    ? white
                                    : transparent,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
