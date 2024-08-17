// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_null_comparison, duplicate_ignore

import 'package:chat_app/auth/Login_signup_auth_fun.dart';
import 'package:chat_app/components/My_button.dart';
import 'package:chat_app/components/My_text_feld.dart';
import 'package:chat_app/components/snackbar.dart';
import 'package:chat_app/consts.dart';
import 'package:chat_app/screens/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // DEMO VARIABLE FOR LOGIN


  // PLEASE REMOVE IT AND ADD YOUR CODE TO LOGIN AND SIGN UP
  // ======================
  final emailcontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasscontroller = TextEditingController();
  final AuthService auth = AuthService();

  // DISPOSE METHOD
  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroller.dispose();
    usernamecontroller.dispose();
    passwordcontroller.dispose();
    confirmpasscontroller.dispose();
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
                  Icons.person_add_alt_1_rounded,
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
                // SLUG MESSAGE
                Text(
                  'We feel good to have you with us!',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600]),
                ),

                Gap(20),

                // USERNAME TEXT FIELD
                MyTextFeld(
                    hinttext: "username",
                    controller: usernamecontroller,
                    obsecuretext: false),

                Gap(20),
                // EMAIL TEXT FIELD
                MyTextFeld(
                    hinttext: "Email",
                    controller: emailcontroller,
                    obsecuretext: false),

                Gap(20),

                // CONFIRM PASS TEXT FIELD
                MyTextFeld(
                    hinttext: "Password",
                    controller: passwordcontroller,
                    obsecuretext: true),
                Gap(20),
                // CONFIRM PASS TEXT FIELD
                MyTextFeld(
                    hinttext: "Confirm Password",
                    controller: confirmpasscontroller,
                    obsecuretext: true),
                Gap(20),
                // SIGN IN BUTTON
                MyButton(
                  text: "Create Account",
                  ontap: () async {
                    // ==========================================
                    // ignore: unnecessary_null_comparison
                    if (emailcontroller.text != null &&
                        passwordcontroller.text != null &&
                        passwordcontroller.text == confirmpasscontroller.text) {
                      await auth.createUser(context, emailcontroller.text,
                          passwordcontroller.text);
                    } else {
                      showErrorSnackbar(
                          context, 'please check your email and password');
                    }
                    // ================================================
                  },
                ),

                // Don't have an accout create one
                TextButton(
                  onPressed: () {
                    Get.to(() => MyLoginPage());
                  },
                  child: Text(
                    "Have an account? Log in",
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
