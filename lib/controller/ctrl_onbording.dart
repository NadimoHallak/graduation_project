import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/constant/onboding_list.dart';

abstract class CtrlOnbording extends GetxController {
  next();

  onPageChanging(int index);
}

class CtrlOnbordingImp extends CtrlOnbording {
  PageController? pageViewCtrl;
  int currentPage = 0;

  @override
  next() {
    if (currentPage < onbording.length - 1) {
      currentPage++;
      pageViewCtrl!.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
      update();
    } else {
      currentPage = 0;
      pageViewCtrl!.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
      update();
    }
  }

  @override
  onPageChanging(int index) {
    currentPage = index;
    update();
  }

  @override
  void dispose() {
    pageViewCtrl = PageController();

    super.dispose();
  }
}
