import 'package:get/get.dart';

class Dimensions {
  static double height = Get.context!.height;
  static double width = Get.context!.width;

  static double getHeight(double size) {
    double value = 752 / size;
    return height / value;
  }

  static double getWidth(double size) {
    double value = 360 / size;

    return width/value;
  }
}
