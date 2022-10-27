import 'package:flutter/material.dart';
import 'package:tugasminiproject/pages/home.dart';
import 'package:tugasminiproject/splash/splash.dart';

import 'intro/intro.dart';
import 'login_regis/login.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Home',
      home:  SplashScreenPage(),
    );
  }
}
