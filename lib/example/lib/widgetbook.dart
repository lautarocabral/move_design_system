import 'package:flutter/material.dart';
import 'package:move_design_system/move_design_system.dart';
import 'package:widgetbook/widgetbook.dart';

final defaultTheme = AppTheme(
  colors: appColors,
  textStyles: appTextStyles,
  paddings: dsPaddings,
  materialTheme: ThemeData(),
);

void main() {
  runApp(const WidgetbookApp());
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
                    child: DSPrimaryButton(text: 'Primary', onPressed: () {}),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Disabled',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSPrimaryButton(text: 'Disabled', enabled: false),
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
                    child: DSSecondaryButton(text: 'Disabled', enabled: false),
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
                      child: DSFormTextField(name: 'field', label: 'Label'),
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
            WidgetbookComponent(
              name: 'DSTitle',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSTitle('Título grande'),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Custom Style',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSTitle(
                      'Título custom',
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DSSubtitle',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSSubtitle('Subtítulo'),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Custom Style',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSSubtitle(
                      'Subtítulo custom',
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DSCaption',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSCaption('Pie de foto'),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Custom Style',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSCaption(
                      'Pie de foto custom',
                      fontWeight: FontWeight.w300,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DSAppBarTitle',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSAppBarTitle('AppBar Title'),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Custom Style',
                  builder: (context) => AppThemeProvider(
                    theme: defaultTheme,
                    child: DSAppBarTitle(
                      'AppBar Title',
                      fontWeight: FontWeight.w300,
                      color: Colors.green,
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
    return ElevatedButton(onPressed: () {}, child: Text(text));
  }
}
