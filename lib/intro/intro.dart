import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animate_do/animate_do.dart';
import '../controllers/Bottom_controller.dart';
import '../controllers/food_controller.dart';
import 'package:tugasminiproject/login_regis/login.dart';

import '../pages/landscape_mode.dart';




class IntroScreen extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 800);

  const IntroScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
     if(MediaQuery.of(context).orientation == Orientation.portrait){
      return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.all(8),
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /// 
              FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 2000),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 50,
                    left: 5,
                    right: 5,
                  ),
                  width: size.width,
                  height: size.height / 2,
                  child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_M9p23l.json", height: 400, animate: true),
                ),
              ),
      
              ///
              const SizedBox(
                height: 15,
              ),
      
              /// TITLE
              FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 1600),
                child: const Text(
                  "Selamat Datang",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
      
              ///
              const SizedBox(
                height: 10,
              ),
      
              /// SUBTITLE
              FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 1000),
                child: const Text(
                  "Sebelum masuk silahkan masuk/daftar terlebih dahulu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.2,
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                ),
              ),
      
              ///
              Expanded(child: Container()),
      
              //
               FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 600),
                 child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => PageLogin(showRegisPage: () {  },)));
                    },
                    child: GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
               ),          
            ],
          ),
        ),
          ),
      );
    }else{
      return const LandScape();
    }
  }
}

class SButton extends StatelessWidget {
  const SButton({
    Key? key,
    required this.size,
    required this.color,
    required this.borderColor,
    required this.img,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  final Size size;
  final Color color;
  final Color borderColor;
  final String img;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: size.width / 1.2,
        height: size.height / 15,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
