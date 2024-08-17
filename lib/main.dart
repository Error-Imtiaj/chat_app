import 'dart:async';

import 'package:chat_app/Theme/Lighttheme.dart';
import 'package:chat_app/Theme/darktheme.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/Splash_screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightMode,
      darkTheme: DarkMode,
      home: SplashScreens(),
    );
  }
}
