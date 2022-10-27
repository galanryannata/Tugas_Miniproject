import 'package:get/get.dart';

class SwitchController extends GetxController {
  var currentFoodIndex = 0;

  void changeIndex(int index) {
    currentFoodIndex = index;
  }
}
