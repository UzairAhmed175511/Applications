import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_delivery/on_boarding.dart';

class SplashServices {
  void isLogin(BuildContext Context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        Context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      ),
    );
  }
}
