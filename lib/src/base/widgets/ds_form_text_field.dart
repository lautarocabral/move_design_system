import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:move_design_system/move_design_system.dart';

class DSFormTextField extends StatefulWidget {
  final String name;
  final String label;
  final String? hintText;
  final bool isPassword;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final IconData? prefixIcon;
  final ValueChanged<String?>? onChanged;

  const DSFormTextField({
    super.key,
    required this.name,
    required this.label,
    this.hintText,
    this.isPassword = false,
    this.textInputAction,
    this.validator,
    this.prefixIcon,
    this.onChanged,
  });

  @override
  State<DSFormTextField> createState() => _DSFormTextFieldState();
}

class _DSFormTextFieldState extends State<DSFormTextField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.name,
      obscureText: widget.isPassword ? _obscure : false,
      decoration: AppInputStyles.inputDecoration(
        label: widget.label,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: () => setState(() => _obscure = !_obscure),
              )
            : null,
      ),
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      onChanged: widget.onChanged,
    );
  }
}
