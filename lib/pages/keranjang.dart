import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
//
import '../controllers/bottom_controller.dart';
import '../utils/constanst.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: mainDrawer(1),
        appBar: const MyAppBar(),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: MainItem(),
        ),
      ),
    );
  }
}

class MainItem extends StatelessWidget {
  const MainItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: w / 1.01,
          height: h / 3,
          child: FadeInUp(
            delay: const Duration(milliseconds: 300),
            child: Lottie.network(
                "https://assets7.lottiefiles.com/private_files/lf30_lkquf6qz.json",
                animate: true),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        FadeInUp(
          delay: const Duration(milliseconds: 600),
          child: Text(
            "Belum ada barang",
            style: GoogleFonts.lato(
              fontSize: 25,
            ),
          ),
        )
      ],
    );
  }
}

/// MyAppBar Widget Components
class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Get.put(BottomController()).changeNavBarIndex(1);
              },
              icon: const Icon(
                LineIcons.shoppingCart,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
        ],
      );
  }
}
