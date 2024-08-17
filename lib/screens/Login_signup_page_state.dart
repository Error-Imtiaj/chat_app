import 'package:chat_app/screens/Home_page.dart';
import 'package:chat_app/screens/Login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginSignupPageState extends StatefulWidget {
  const LoginSignupPageState({super.key});

  @override
  State<LoginSignupPageState> createState() => _LoginSignupPageStateState();
}

class _LoginSignupPageStateState extends State<LoginSignupPageState> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return HomePage();
        }
        return MyLoginPage();
      },
    );
  }
}
