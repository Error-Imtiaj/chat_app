import 'package:flutter/material.dart';

final ThemeData LightMode = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Colors.blueGrey.shade900, // Darker blue-grey for primary elements
    onPrimary: const Color(0xffdcdde1), // White text/icons on primary elements
    secondary: Colors.amber.shade600, // Amber for highlights and accents
    onSecondary: Colors.white, // White text/icons on secondary elements
    background: Colors.grey.shade900, // Dark grey background
    onBackground: Colors.white, // White text/icons on background
    surface: Colors.grey.shade800, // Dark grey cards, sheets, etc.
    onSurface: Colors.white, // White text/icons on surfaces
    error: Colors.red.shade400, // Slightly lighter red for errors
    onError: Colors.black, // Black text/icons on error elements
    brightness: Brightness.dark, // Specifies that this is a dark theme
  ),
);
