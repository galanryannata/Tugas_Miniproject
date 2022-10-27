import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tugasminiproject/auth/main_service.dart';
import '../pages/landscape_mode.dart';
import 'regis.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PageLogin extends StatefulWidget {
  final VoidCallback showRegisPage;
  const PageLogin({Key? key, required this.showRegisPage}) : super(key: key);

  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var Dkosong = const SnackBar(
    content: Text('Tolong diisi'),
  );

  var DPkosong = const SnackBar(
    content: Text('Password kosong!'),
  );

  var DEkosong = const SnackBar(
    content: Text('Email kosong'),
  );

  var DPkurang = const SnackBar(
    content: Text('Password tidak boleh kurang dari 6 karakter'),
  );

  Future Login() async {
    try {
      if (_emailController.text.isNotEmpty &
          _passwordController.text.isNotEmpty) {
        if (_passwordController.text.length < 6) {
          ScaffoldMessenger.of(context).showSnackBar(DPkurang);
        } else {
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainPage()));
        }
      } else if (_emailController.text.isNotEmpty &
          _passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(DPkosong);
      } else if (_emailController.text.isEmpty &
          _passwordController.text.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(DEkosong);
      } else if (_emailController.text.isEmpty &
          _passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(Dkosong);
      }
    } catch (e) {
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Penting",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('Akun tidak ditemukan, Apakah mau daftar? ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 134, 134, 134))),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  child: const Text(
                    'tidak',
                    style: TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    _emailController.clear();
                    _passwordController.clear();
                  }),
              TextButton(
                  child: const Text(
                    'iya',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  _emailController.clear();
                  _passwordController.clear();
                  Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => PageRegis(showLoginPage: () {  },)));
                  }),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait){
       return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                FadeInUp(
                  child: Container(
                    height: 300,
                    child: Image.asset(
                      "assets/logo.png",
                      height: 400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FadeInUp(
                  delay: Duration(milliseconds: 800),
                  duration: Duration(milliseconds: 1500),
                  child: TextField(
                    controller: _emailController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0.0),
                      labelText: 'Email',
                      hintText: 'Wajib Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  delay: Duration(milliseconds: 800),
                  duration: Duration(milliseconds: 1500),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0.0),
                      labelText: 'Password',
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(
                        Iconsax.key,
                        color: Colors.black,
                        size: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeInUp(
                  delay: Duration(milliseconds: 1300),
                  duration: Duration(milliseconds: 800),
                  child: MaterialButton(
                    onPressed: () {
                      Login();
                    },
                    height: 45,
                    color: Colors.black,
                    child: Text(
                      "Masuk",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FadeInUp(
                  delay: Duration(milliseconds: 1300),
                  duration: Duration(milliseconds: 800),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun?',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageRegis(
                                        showLoginPage: () {},
                                      )));
                        },
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
    }else{
      return const LandScape();
    }
  }
}
