import 'package:get/get.dart';

 class HomeController extends GetxController {




  int currentIndex = 1;

  void onChangePage(int value) {
    currentIndex = value;
    update();
  }

}
