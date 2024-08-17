import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? ontap;

  const MyButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onError,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(text,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
