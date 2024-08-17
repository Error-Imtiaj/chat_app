import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ERROR SNACKBAR
void showErrorSnackbar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: GoogleFonts.poppins(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
    ),
    backgroundColor: Colors.redAccent,
    //behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      label: 'DISMISS',
      textColor: Colors.yellow,
      onPressed: () {
        // Dismiss the snackbar
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );

  // Show the snackbar
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

// SUCCESS SNACKBAR
void showSuccessSnackbar(BuildContext context, String message) {
  if (!context.mounted) return;
  
  final snackBar = SnackBar(
    content: Text(
      message,
      style: GoogleFonts.poppins(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
    ),
    backgroundColor: Colors.green,
    //behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      label: 'DISMISS',
      textColor: Colors.black,
      onPressed: () {
        // Dismiss the snackbar
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );

  // Show the snackbar
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
