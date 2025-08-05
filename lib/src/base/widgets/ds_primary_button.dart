import 'package:flutter/material.dart';
import 'package:move_design_system/move_design_system.dart';

class DSPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool enabled;
  final Widget? icon;

  const DSPrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.enabled = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);
    return ElevatedButton.icon(
      icon: icon ?? const SizedBox.shrink(),
      label: Text(text, style: theme.textStyles.button),
      onPressed: enabled ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.hovered) || states.contains(WidgetState.pressed)) {
            return theme.colors.secondary;
          }
          return theme.colors.primary;
        }),
        foregroundColor: WidgetStateProperty.all<Color>(theme.colors.onPrimary),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(theme.paddings.buttonPadding),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        textStyle: WidgetStateProperty.all<TextStyle>(theme.textStyles.button),
        elevation: WidgetStateProperty.all<double>(3),
      ),
    );
  }
}
