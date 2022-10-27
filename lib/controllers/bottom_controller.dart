import 'package:get/get.dart';

class BottomController extends GetxController {
  var currentIndex = 0;

  void changeNavBarIndex(int index){
    currentIndex = index;
    update(["change NavBar Index"]);

  }
}
