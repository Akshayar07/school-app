import 'dart:async';
import 'package:flutter/material.dart';
import 'package:future/model/service.dart';
import 'package:future/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.deepOrange),
    home: SplashScreen(),
  ));
}
