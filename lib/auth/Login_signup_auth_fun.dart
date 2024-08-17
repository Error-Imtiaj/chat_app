import 'package:chat_app/components/myloading.dart';
import 'package:chat_app/components/snackbar.dart';
import 'package:chat_app/screens/Home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  // * SIGN IN METHOD

  Future signin(BuildContext context, String email, String pass) async {
    try {
      // * LOADING DIALOGUR
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const Center(child: Myloading());
        },
      );

      final cred = await auth.signInWithEmailAndPassword(
          email: email.trim(), password: pass.trim());
      Get.back();
      if (!context.mounted) return;
      showSuccessSnackbar(context, 'You have successfully signed in');
      Get.off(() => HomePage());
      return cred;
    } on FirebaseAuthException catch (e) {
      Get.back();
      if (e.code == 'user-not-found') {
        showErrorSnackbar(context, 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showErrorSnackbar(context, 'Wrong password provided for that user.');
      } else if (e.code == 'too-many-requests') {
        showErrorSnackbar(
            context, ' Please reset your password or try again later.');
      } else if (e.code == 'network-request-failed') {
        showErrorSnackbar(
            context, 'Network error, please check your connection.');
      } else if (e.code == 'invalid-email') {
        showErrorSnackbar(context, 'Please check your email is valid');
      } else {
        showErrorSnackbar(context, e.toString()); // For any other errors
      }
      return null;
    }
  }

  // * CREATE USER METHOD

  Future createUser(BuildContext context, String email, pass) async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const Center(child: Myloading());
        },
      );

      final cred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      Get.back();
      if (!context.mounted) return;
      showSuccessSnackbar(context, 'You have successfully signed up');

      Get.off(() => HomePage());
      return cred;
    } on FirebaseAuthException catch (e) {
      Get.back();
      if (e.code == 'weak-password') {
        showErrorSnackbar(context, 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showErrorSnackbar(
            context, 'The account already exists for that email.');
      }
    } catch (e) {
      showErrorSnackbar(context, e.toString());
    }
  }
}
