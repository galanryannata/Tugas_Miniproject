import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tugasminiproject/auth/main_auth.dart';
import 'package:tugasminiproject/login_regis/login.dart';

import 'package:tugasminiproject/pages/home.dart';

import '../bottom_navigation_bar.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MainBottom();
        } else {
          return mainAuth();
        }
      },
    ));
  }
}
