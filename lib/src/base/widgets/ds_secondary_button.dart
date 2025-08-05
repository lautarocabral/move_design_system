import 'package:flutter/material.dart';
import 'package:move_design_system/move_design_system.dart';

class DSSecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool enabled;
  final Widget? icon;

  const DSSecondaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.enabled = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);
    return OutlinedButton.icon(
      icon: icon ?? const SizedBox.shrink(),
      label: Text(text, style: theme.textStyles.button.copyWith(color: theme.colors.primary)),
      onPressed: enabled ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.hovered) || states.contains(WidgetState.pressed)) {
            return theme.colors.secondary;
          }
          return theme.colors.primary;
        }),
        side: WidgetStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(WidgetState.hovered) || states.contains(WidgetState.pressed)) {
            return BorderSide(color: theme.colors.secondary, width: 2);
          }
          return BorderSide(color: theme.colors.primary, width: 2);
        }),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(theme.paddings.buttonPadding),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        textStyle: WidgetStateProperty.all<TextStyle>(theme.textStyles.button.copyWith(color: theme.colors.primary)),
        elevation: WidgetStateProperty.all<double>(0),
      ),
    );
  }
}
