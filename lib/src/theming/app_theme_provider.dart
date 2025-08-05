// lib/src/theming/app_theme_provider.dart
import 'package:flutter/material.dart';
import '../base/app_theme.dart';

class AppThemeProvider extends InheritedWidget {
  final AppTheme theme;

  const AppThemeProvider({
    super.key,
    required this.theme,
    required super.child,
  });

  static AppTheme of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
    assert(result != null, 'AppThemeProvider not found in context');
    return result!.theme;
  }

  @override
  bool updateShouldNotify(AppThemeProvider oldWidget) => theme != oldWidget.theme;
}
