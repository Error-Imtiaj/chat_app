import 'package:flutter/material.dart';

final ThemeData DarkMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.blueGrey.shade700, // Darker blue-grey for primary elements
    onPrimary: const Color(0xff718093), // White text/icons on primary elements
    secondary: Colors.purple.shade700, // Amber for highlights and accents
    onSecondary: Colors.black, // Black text/icons on secondary elements
    background: Colors.grey.shade100, // Light grey background
    onBackground: Colors.black, // Black text/icons on background
    surface: Colors.white, // White cards, sheets, etc.
    onSurface: Colors.black, // Black text/icons on surfaces
    error: Colors.red.shade700, // Error color
    onError: Colors.white, // White text/icons on error elements
    brightness: Brightness.light, // Specifies that this is a light theme
  ),
);
