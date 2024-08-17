// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItem extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback ontap;
  const DrawerItem(
      {super.key, required this.title, required this.icon, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        title: Text(
          title!,
          style: GoogleFonts.poppins(
              color: Theme.of(context).colorScheme.onError,
              fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          icon!,
          color: Theme.of(context).colorScheme.onError,
        ),
        onTap: ontap,
      ),
    );
  }
}
