// lib/src/template/success_page.dart
import 'package:flutter/material.dart';
import '../theming/app_theme.dart';

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
    final theme = AppTheme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: theme.primaryColor, size: 64),
              const SizedBox(height: 20),
              Text(title, style: theme.titleStyle),
              const SizedBox(height: 10),
              Text(message, style: theme.bodyStyle),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: onButtonPressed,
                style: theme.buttonStyle,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
