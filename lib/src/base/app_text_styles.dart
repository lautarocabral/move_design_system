// Removed Equatable import, not needed for style class
import 'package:flutter/material.dart';

class AppTextStyles {
  final TextStyle headline;
  final TextStyle subhead;
  final TextStyle body;
  final TextStyle caption;
  final TextStyle button;

  const AppTextStyles({
    this.headline = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.subhead = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    this.body = const TextStyle(
      fontSize: 16,
      color: Colors.black87,
    ),
    this.caption = const TextStyle(
      fontSize: 14,
      color: Colors.black54,
    ),
    this.button = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  });

  // You can add custom equality or copyWith if needed for theming
}
final appTextStyles = const AppTextStyles();