import 'package:flutter/material.dart';

class AppPaddings {
  final EdgeInsets screenPadding;
  final EdgeInsets cardPadding;
  final EdgeInsets buttonPadding;
  final EdgeInsets small;
  final EdgeInsets medium;
  final EdgeInsets large;

  const AppPaddings({
    this.screenPadding = const EdgeInsets.all(16),
    this.cardPadding = const EdgeInsets.all(12),
    this.buttonPadding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.small = const EdgeInsets.all(8),
    this.medium = const EdgeInsets.all(16),
    this.large = const EdgeInsets.all(24),
  });
}

const dsPaddings = AppPaddings(
  screenPadding: EdgeInsets.all(16),
  cardPadding: EdgeInsets.all(12),
  buttonPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  small: EdgeInsets.all(8),
  medium: EdgeInsets.all(16),
  large: EdgeInsets.all(24),
);
