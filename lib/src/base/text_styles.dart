import 'package:flutter/material.dart';
import 'app_colors.dart';

// ...existing code...
TextStyle titleStyle(AppColors colors) => TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: colors.onBackground,
);

TextStyle bodyStyle(AppColors colors) => TextStyle(
  fontSize: 16,
  color: colors.onSurface,
);

TextStyle buttonStyle(AppColors colors) => TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: colors.onPrimary,
);
// Other methods and properties
