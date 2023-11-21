import 'package:get/get.dart';

extension PersentSized on double {
  double get hp => (Get.height * (this / 100));
  double get wp => (Get.width * (this / 100));
}

extension RespnsiveText on double {
  double get sp => Get.width / 100 * (this / 3);
}
