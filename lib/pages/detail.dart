
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tugasminiproject/pages/home.dart';
import '../controllers/switch_controller.dart';
import '../utils/constanst.dart';
import '../controllers/food_controller.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: const Keranjang(),
          appBar: const MyAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                TopImage(),
                HeaderWidget(),
                Deskripsi(),
                Jam(),
                Harga()
              ],
            ),
          )),
    );
  }
}


class Harga extends StatelessWidget {
  const Harga({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(SwitchController());
    return FadeInDown(
      delay: const Duration(milliseconds: 1300),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          width: w / 3,
          height: h / 10,
          child: Column(
            children: [
              Text(
                "Total",
                style: GoogleFonts.oxygen(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "\Rp${Get.put(FoodController()).food[_controller.currentFoodIndex].price.toStringAsFixed(3)}",
                style: GoogleFonts.oxygen(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Jam extends StatelessWidget {
  const Jam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(SwitchController());
    return FadeInDown(
      delay: const Duration(milliseconds: 1100),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        width: w,
        height: h / 22,
        child: Row(
          children: [
            Text(
              "Delivery",
              style: GoogleFonts.oxygen(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Icon(
              LineIcons.clock,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              Get.put(FoodController())
                  .food[_controller.currentFoodIndex]
                  .deliveryTime,
              style: GoogleFonts.oxygen(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Deskripsi extends StatelessWidget {
  const Deskripsi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(SwitchController());
    return FadeInDown(
      delay: const Duration(milliseconds: 900),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: w,
        height: h / 9,
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Text(
              Get.put(FoodController())
                  .food[_controller.currentFoodIndex]
                  .description,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            )),
      ),
    );
  }
}


class Keranjang extends StatelessWidget {
  const Keranjang({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var _foodController = Get.put(FoodController());
    var _controller = Get.put(SwitchController());
    return SizedBox(
      height: 70,
      width: 70,
      child: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          
        },
        child: const Icon(
          LineIcons.shoppingCart,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(SwitchController());

    return SizedBox(
      width: w,
      height: h / 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInDown(
            delay: const Duration(milliseconds: 300),
            child: SizedBox(
              width: w / 1.6,
              child: Text(
                Get.put(FoodController())
                    .food[_controller.currentFoodIndex]
                    .title,
                style: GoogleFonts.oxygen(
                  fontSize: Get.put(FoodController())
                              .food[_controller.currentFoodIndex]
                              .title
                              .length <=
                          13
                      ? 26
                      : 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 1),
            width: w / 3.4,
            height: h / 18,
            child: Row(
              children: [
                FadeInLeft(
                  delay: const Duration(milliseconds: 400),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {
                       Get.find<FoodController>()
                            .add(_controller.currentFoodIndex);
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 700),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: GetBuilder<FoodController>(
                          id: "quantity",
                          builder: (context) {
                            return Text(
                              Get.put(FoodController())
                                  .food[_controller.currentFoodIndex]
                                  .quantity
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            );
                          })),
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 600),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {
                        Get.find<FoodController>()
                            .remove(_controller.currentFoodIndex);
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(SwitchController());
    return FadeInDown(
      delay: const Duration(milliseconds:1800),
      child: SizedBox(
        width: w,
        height: h / 2.3,
        child: Hero(
            tag: Get.put(FoodController())
                .food[_controller.currentFoodIndex]
                .id,
                
            child: Image.asset(
              Get.put(FoodController())
                  .food[_controller.currentFoodIndex]
                  .img,
            )),
      ),
    );
  }
}


class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 100),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
               Navigator.push(context, 
                MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
    );
  }
}
