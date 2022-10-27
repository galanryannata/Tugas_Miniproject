import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tugasminiproject/pages/detail.dart';
import '../controllers/Bottom_controller.dart';
import '../controllers/food_controller.dart';
import '../controllers/switch_controller.dart';
import '../controllers/tabBar_controller.dart';
import '../utils/constanst.dart';


class HomePage extends StatelessWidget {


  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        drawer: mainDrawer(3),
        appBar: const MyAppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            children: [
              const TopTextWidget(),
              TabBar(),
              const Menu(),
            ],
          ),
        ),
      ),
    );
  }
}





class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(SwitchController());
    var _foodController = Get.put(FoodController());
    return SizedBox(
      width: w,
      height: h/1.7,
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: _foodController.food.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _controller.currentFoodIndex = index;
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      child: FadeInDown(
                        child: Container(
                          width: w / 2.4,
                          height: h / 4,
                          decoration: BoxDecoration(
                              color: unSelectedColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: FadeInDown(
                          child: SizedBox(
                            width: w / 2.8,
                            height: h / 5.5,
                            child: Center(
                              child: Image.asset(
                                _foodController.food[index].img,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    Positioned(
                      left: 10,
                      top: 130,
                      child: FadeInDown(
                        child: SizedBox(
                          width: w / 2.7,
                          height: h / 30,
                          child: Center(
                            child: Text(
                              _foodController.food[index].title,
                              style: GoogleFonts.oxygen(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 155,
                      child: FadeInDown(
                        child: Text(
                          _foodController.food[index].subtitle,
                          style: GoogleFonts.oxygen(
                              color: const Color.fromARGB(255, 135, 134, 134),
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 55,
                      top: 185,
                      child: FadeInDown(
                        child: Text(
                          "\Rp${_foodController.food[index].price.toStringAsFixed(3)}",
                          style: GoogleFonts.oxygen(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 7,
                      child: FadeInUp(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                              onPressed: () {
          
                              },
                              icon: const Icon(
                                Icons.add,
                                color: unSelectedColor,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}



class TabBar extends StatelessWidget {
  TabBar({
    Key? key,
  }) : super(key: key);

  final List<String> tabNames = [
    "Makanan",
    "Minuman",
    "Discount",
  
  ];

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(TabBarController());
    return FadeInDown(
      delay: const Duration(milliseconds: 800),
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 5),
        width: w,
        height: h / 13,
        child: Row(
          children: [
            SizedBox(
              width: w / 1.25,
              height: double.infinity,
              child: ListView.builder(
                  itemCount: 3,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Obx(() {
                      return GestureDetector(
                        onTap: () {
                          _controller.currentIndex.value = index;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: w / 4,
                          height: double.infinity,
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: _controller.currentIndex.value == index
                                ? Colors.black
                                : unSelectedColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text(
                            tabNames[index],
                            style: GoogleFonts.oxygen(
                                color: _controller.currentIndex.value == index
                                    ? const Color.fromARGB(255, 234, 234, 234)
                                    : Colors.black,
                                fontSize: 16),
                          )),
                        ),
                      );
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}


class TopTextWidget extends StatelessWidget {
  const TopTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h / 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInDown(
            delay: const Duration(milliseconds: 400),
            child: Text(
              "Selamat Datang",
              style: GoogleFonts.oxygen(
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          FadeInDown(
            delay: const Duration(milliseconds: 600),
            child: Text(
              "Makanan dan minuman sehat",
              style: GoogleFonts.oxygen(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// MyAppBar Widget Components
class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
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
           
              },
              icon: const Icon(
                LineIcons.search,
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
