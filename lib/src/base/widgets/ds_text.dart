import 'package:flutter/material.dart';
import 'package:move_design_system/src/theming/app_theme_provider.dart';

class DSText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final Color? color;

  const DSText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);
    TextStyle baseStyle = style ?? theme.textStyles.body;
    if (fontWeight != null) {
      baseStyle = baseStyle.copyWith(fontWeight: fontWeight);
    }
    if (color != null) {
      baseStyle = baseStyle.copyWith(color: color);
    }
    return Text(
      data,
      style: baseStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class DSTitle extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final Color? color;

  const DSTitle(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);
    TextStyle baseStyle = theme.textStyles.headline;
    if (fontWeight != null) {
      baseStyle = baseStyle.copyWith(fontWeight: fontWeight);
    }
    if (color != null) {
      baseStyle = baseStyle.copyWith(color: color);
    }
    return Text(
      data,
      style: baseStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class DSSubtitle extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final Color? color;

  const DSSubtitle(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);
    TextStyle baseStyle = theme.textStyles.subhead;
    if (fontWeight != null) {
      baseStyle = baseStyle.copyWith(fontWeight: fontWeight);
    }
    if (color != null) {
      baseStyle = baseStyle.copyWith(color: color);
    }
    return Text(
      data,
      style: baseStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class DSCaption extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final Color? color;

  const DSCaption(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);
    TextStyle baseStyle = theme.textStyles.caption;
    if (fontWeight != null) {
      baseStyle = baseStyle.copyWith(fontWeight: fontWeight);
    }
    if (color != null) {
      baseStyle = baseStyle.copyWith(color: color);
    }
    return Text(
      data,
      style: baseStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class DSAppBarTitle extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final Color? color;

  const DSAppBarTitle(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context);
    TextStyle baseStyle = theme.textStyles.headline;
    if (fontWeight != null) {
      baseStyle = baseStyle.copyWith(fontWeight: fontWeight);
    }
    if (color != null) {
      baseStyle = baseStyle.copyWith(color: color);
    }
    return Text(
      data,
      style: baseStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
