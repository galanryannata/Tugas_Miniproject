import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import '../controllers/bottom_controller.dart';
import '../utils/constanst.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: mainDrawer(0),
        appBar: const ProfileAppBar(),
        body: Column(
          children: [
            ProfilInfo(),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: w,
              height: h / 1.6,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilInfo extends StatelessWidget {
  final User = FirebaseAuth.instance.currentUser!;
   ProfilInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return FadeInDown(
      delay: const Duration(milliseconds: 600),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: w,
          height: h / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/org.jpeg")),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    User.email!,
                    style: GoogleFonts.oxygen(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileAppBar extends StatelessWidget with PreferredSizeWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 100),
      child: AppBar(
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
      ),
    );
  }
}
