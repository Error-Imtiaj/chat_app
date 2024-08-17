// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_app/auth/Login_signup_auth_fun.dart';
import 'package:chat_app/components/My_button.dart';
import 'package:chat_app/components/My_text_feld.dart';

import 'package:chat_app/consts.dart';
import 'package:chat_app/screens/Register_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  // DEMO VARIABLE FOR LOGIN

  // PLEASE REMOVE IT AND ADD YOUR CODE TO LOGIN AND SIGN UP
  // ======================
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final AuthService auth = AuthService();

  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Logo
                Icon(
                  Icons.person_4_outlined,
                  size: 100,
                  color: Theme.of(context).colorScheme.onError,
                ),

                Text(
                  //  PLEASE WRITE YOUR APP NAME HERE
                  appName!,
                  style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onError),
                ),
                Divider(
                  thickness: 6,
                  color: Theme.of(context).colorScheme.onError,
                  height: 10,
                  indent: 20,
                  endIndent: 20,
                ),

                Gap(20),

                // Welcome back message
                Text(
                  'Welcome back champ! ',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600]),
                ),

                Gap(20),

                // Email text field
                MyTextFeld(
                    hinttext: "Email",
                    controller: emailcontroller,
                    obsecuretext: false),

                Gap(20),

                // Pass test field
                MyTextFeld(
                    hinttext: "Password",
                    controller: passwordcontroller,
                    obsecuretext: true),
                Gap(20),
                // Sign In button
                MyButton(
                  text: "Sign In",
                  ontap: () async {
                    // ==========================================
                    await auth.signin(
                        context, emailcontroller.text, passwordcontroller.text);

                    // ================================================
                  },
                ),

                // Don't have an accout create one
                TextButton(
                  onPressed: () {
                    Get.to(() => RegisterPage());
                  },
                  child: Text(
                    "Don't have an Account? create one",
                    style: GoogleFonts.poppins(
                        color: Theme.of(context).colorScheme.onError),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
