
import 'package:get/get.dart';
import '../controllers/drawer_controller.dart';
import '../controllers/bottom_controller.dart';
import '../controllers/switch_controller.dart';
import '../controllers/tabBar_controller.dart';
import '../controllers/food_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomController());
    Get.lazyPut(() => TabBarController());
    Get.lazyPut(() => SwitchController());
    Get.lazyPut(() => FoodController());
    Get.lazyPut(() => MainDrawerController());
    
  }
}
