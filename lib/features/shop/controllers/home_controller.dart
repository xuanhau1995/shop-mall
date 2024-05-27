import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouseCurrentIndex = 0.obs;

  void updateCarousePageIndicator(index) {
    carouseCurrentIndex.value = index;
  }
}
