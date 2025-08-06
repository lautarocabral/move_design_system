
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'src/base/widgets/ds_primary_button.dart';
import 'src/base/widgets/ds_secondary_button.dart';
import 'src/base/widgets/ds_form_text_field.dart';
import 'src/base/widgets/ds_text.dart';
import 'src/base/app_theme.dart';
import 'src/base/app_colors.dart';
import 'src/base/app_text_styles.dart';
import 'src/base/paddings.dart';
import 'src/theming/app_theme_provider.dart';

final defaultTheme = AppTheme(
  colors: appColors,
  textStyles: appTextStyles,
  paddings: dsPaddings,
  materialTheme: ThemeData(),
);

void main() {
  runApp(
    Theme(
      data: ThemeData(),
      child: const WidgetbookApp(),
    ),
  );
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookCategory(
          name: 'Base Widgets',
          children: [
            WidgetbookComponent(
              name: 'DSPrimaryButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSPrimaryButton(
                      text: 'Primary',
                      onPressed: () {},
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Disabled',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSPrimaryButton(
                      text: 'Disabled',
                      enabled: false,
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DSSecondaryButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSSecondaryButton(
                      text: 'Secondary',
                      onPressed: () {},
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Disabled',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSSecondaryButton(
                      text: 'Disabled',
                      enabled: false,
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DSFormTextField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: DSFormTextField(
                        name: 'field',
                        label: 'Label',
                      ),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Password',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: DSFormTextField(
                        name: 'password',
                        label: 'Password',
                        isPassword: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DSText',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSText('Texto por defecto'),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Custom Style',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSText(
                      'Texto custom',
                      style: const TextStyle(fontSize: 24, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
