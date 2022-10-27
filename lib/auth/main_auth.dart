import 'package:flutter/material.dart';
import 'package:tugasminiproject/login_regis/login.dart';
import 'package:tugasminiproject/login_regis/regis.dart';

class mainAuth extends StatefulWidget {
  const mainAuth({Key? key}) : super(key: key);
  
  @override
  State<mainAuth> createState() => _mainAuthtate();
}

class _mainAuthtate extends State<mainAuth>{

  bool ShowLoginPage = true;

  void toggleSrecrens(){
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(ShowLoginPage){
      return PageLogin(showRegisPage: toggleSrecrens);
    }else{
      return PageRegis(showLoginPage: toggleSrecrens);
    }
  }
}