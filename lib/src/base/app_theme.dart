// lib/src/base/app_theme.dart
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';
import 'app_button_styles.dart';
import 'app_input_styles.dart';
import 'paddings.dart';

class AppTheme {
  final AppColors colors;
  final AppTextStyles textStyles;
  final AppPaddings paddings;
  final ThemeData materialTheme;

  const AppTheme({
    required this.colors,
    required this.textStyles,
    required this.paddings,
    required this.materialTheme,
  });

  AppTheme copyWith({
    AppColors? colors,
    AppTextStyles? textStyles,
    AppPaddings? paddings,
    ThemeData? materialTheme,
  }) {
    return AppTheme(
      colors: colors ?? this.colors,
      textStyles: textStyles ?? this.textStyles,
      paddings: paddings ?? this.paddings,
      materialTheme: materialTheme ?? this.materialTheme,
    );
  }
}

// Example default theme instance
// You should initialize with your default styles and colors
// import your default paddings, textStyles, and materialTheme as needed
// final appTheme = AppTheme(
//   colors: appColors,
//   textStyles: appTextStyles,
//   paddings: appPaddings,
//   materialTheme: ThemeData(),
// );
