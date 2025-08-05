// lib/src/template/success_page.dart
import 'package:flutter/material.dart';
import '../theming/app_theme_provider.dart';

class SuccessPage extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const SuccessPage({
    super.key,
    required this.title,
    required this.message,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);

    return Scaffold(
      backgroundColor: theme.colors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: theme.colors.primary, size: 64),
              const SizedBox(height: 20),
              Text(title, style: theme.textStyles.headline),
              const SizedBox(height: 10),
              Text(message, style: theme.textStyles.body),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: onButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colors.primary,
                  foregroundColor: theme.colors.onPrimary,
                  textStyle: theme.textStyles.button,
                ),
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
