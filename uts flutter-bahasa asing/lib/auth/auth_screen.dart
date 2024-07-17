import 'package:flutter/material.dart';
import 'package:uts/screen/login_page.dart';
import 'package:uts/screen/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}):super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showloginpage = true;

  void tooglescreen(){
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage){
      return LoginPage(
        showRegisterPage: tooglescreen,
      );
    } else {
      return RegisterPage(showLoginPage: tooglescreen);
    }
  }
}