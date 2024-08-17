// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:chat_app/screens/Login_signup_page_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // * TIMER FOR SPLASH SCREEN ANIMATION
    Timer(const Duration(seconds: 3), () {
      // * FIREBASE AUTH STATE CHANGE

      Get.off(() => LoginSignupPageState());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      child: Center(
        child: LottieBuilder.network(
          'https://lottie.host/662fe884-d770-4f23-a8c7-15e1d2458693/BrTH46Xa8I.json',
        ),
      ),
    );
  }
}
