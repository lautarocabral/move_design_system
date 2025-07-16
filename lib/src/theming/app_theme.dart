import 'package:flutter/material.dart';
import 'design_theme.dart';

class AppTheme extends InheritedWidget {
  final DesignTheme theme;

  const AppTheme({
    super.key,
    required this.theme,
    required super.child,
  });

  static DesignTheme of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    assert(result != null, 'AppTheme not found in context');
    return result!.theme;
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) =>
      theme != oldWidget.theme;
}
