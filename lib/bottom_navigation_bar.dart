import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

//
import 'pages/landscape_mode.dart';
import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/keranjang.dart';
import 'controllers/bottom_controller.dart';

class MainBottom extends StatelessWidget {
  const MainBottom({Key? key}) : super(key: key);

  // Screens
  final List<Widget> screens = const [
    HomePage(),
    KeranjangPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    

    /// Controller
    final _controller = Get.put(BottomController());
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return SafeArea(
        child: Scaffold(
          /// Screens
          body: GetBuilder<BottomController>(
              id: "change NavBar Index",
              builder: (context) {
                return screens[_controller.currentIndex];
              }),

          /// bottomNavigationBar
          bottomNavigationBar: GetBuilder<BottomController>(
              id: "change NavBar Index",
              builder: (context) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(),
                  child: CustomNavigationBar(
                    iconSize: 30.0,
                    unSelectedColor: Colors.grey,
                    strokeColor: Colors.white,
                    backgroundColor: Colors.black,
                    selectedColor: Colors.white,
                    currentIndex: _controller.currentIndex,
                    onTap: (index) {
                      _controller.changeNavBarIndex(index);
                    },
                    items: [
            
                      CustomNavigationBarItem(
                        icon: const Icon(
                          LineIcons.home,
                        ),
                      ),

                
                      CustomNavigationBarItem(
                        icon: const Icon(
                          LineIcons.shoppingCart,
                        ),
                      ),

                      CustomNavigationBarItem(
                        icon: const Icon(
                          LineIcons.user,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      );
    } else {
      return const LandScape();
    }
  }
}
