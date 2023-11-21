import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/constant/color.dart';
import 'package:graduation_project/constant/font_style.dart';
import 'package:graduation_project/constant/onboding_list.dart';
import 'package:graduation_project/controller/ctrl_onbording.dart';

class MySlider extends GetView<CtrlOnbordingImp> {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      
      onPageChanged: (value) {
        controller.onPageChanging(value);
      },
      controller: controller.pageViewCtrl,
      itemCount: onbording.length,
      itemBuilder: (context, i) {
        return Text(
          textAlign: TextAlign.center,
          onbording[i],
          style: myStyle(textColor: white, textSize: 23),
        );
      },
    );
  }
}