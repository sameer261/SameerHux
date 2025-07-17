import 'package:flutter/material.dart';

Color blue = const Color(0xff0061FF);
Color electricblue = const Color(0xff60EFFF);
Color black = const Color(0xff000000);

// Gradient as a variable
LinearGradient gradient = const LinearGradient(
  colors: [
    Color(0xFF0061FF), // Start blue
    Color(0xFF5DEAFF), // Middle blue
    Color(0xFF60EFFF), // End blue
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.0, 0.67, 0.69],
);
