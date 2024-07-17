import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uts/auth/auth_screen.dart';
import 'package:uts/screen/home_page.dart';
import 'package:uts/screen/login.dart';
import 'package:uts/screen/login_page.dart';
import 'package:uts/screen/startpage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return AuthPage();
          }
        },
      )
    );
  }
}