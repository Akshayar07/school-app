import 'dart:async';
import 'package:flutter/material.dart';

import 'class_detail_page.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () =>
            Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
            'assets/school_logo.png',
          ),
          height:100,
          // width: 25,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

