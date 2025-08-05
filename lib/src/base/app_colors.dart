import 'package:flutter/material.dart';

class AppColors {
  final Color primary;
  final Color secondary;
  final Color background;
  final Color surface;
  final Color error;
  final Color onPrimary;
  final Color onSecondary;
  final Color onBackground;
  final Color onSurface;
  final Color onError;

  const AppColors({
    this.primary = const Color(0xFF1976D2),
    this.secondary = const Color(0xFF424242),
    this.background = Colors.white,
    this.surface = Colors.white,
    this.error = Colors.red,
    this.onPrimary = Colors.white,
    this.onSecondary = Colors.white,
    this.onBackground = Colors.black,
    this.onSurface = Colors.black,
    this.onError = Colors.white,
  });
}

const appColors = AppColors();
