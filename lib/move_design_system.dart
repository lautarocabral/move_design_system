// lib/move_design_system.dart
library move_design_system;

// Theme system
export 'src/base/app_theme.dart';
export 'src/base/app_colors.dart';
export 'src/base/app_text_styles.dart';
export 'src/base/app_button_styles.dart';
export 'src/base/app_input_styles.dart';
export 'src/base/paddings.dart';
export 'src/theming/app_theme_provider.dart';

// Templates
export 'src/template/success_page.dart';
// export 'src/template/error_page.dart';

import 'package:flutter/material.dart';
import 'src/base/app_theme.dart';
import 'src/base/app_colors.dart';
import 'src/base/app_text_styles.dart';
import 'src/base/paddings.dart';
export 'src/base/widgets/ds_text.dart';
export 'src/base/widgets/ds_primary_button.dart';
export 'src/base/widgets/ds_secondary_button.dart';
export 'src/base/widgets/ds_form_text_field.dart';


// Instancia por defecto del theme
final appTheme = AppTheme(
  colors: appColors,
  textStyles: appTextStyles,
  paddings: dsPaddings,
  materialTheme: ThemeData(), // Puedes personalizarlo
);
