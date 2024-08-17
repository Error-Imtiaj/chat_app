import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFeld extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool obsecuretext;
  const MyTextFeld(
      {super.key,
      required this.hinttext,
      required this.controller,
      required this.obsecuretext});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(width: 1, color: Theme.of(context).colorScheme.onError),
        left:
            BorderSide(width: 1, color: Theme.of(context).colorScheme.onError),
        bottom:
            BorderSide(width: 4, color: Theme.of(context).colorScheme.onError),
        right:
            BorderSide(width: 4, color: Theme.of(context).colorScheme.onError),
      )),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hinttext,
          hintStyle:
              GoogleFonts.poppins(color: Theme.of(context).colorScheme.onError),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          fillColor: Theme.of(context).colorScheme.onSurface,
          filled: true,
        ),
        obscureText: obsecuretext,
        controller: controller,
        // INPUT TEXT STYLE
        style: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.onError,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
