import "package:flutter/material.dart";
class CustomTextTheme {
  // Define custom font family (replace with your desired font)
  static const String _fontFamily = 'Inter';

  // Base text style with custom font
  static TextStyle _baseTextStyle(
      Color color,
      double fontSize,
      FontWeight fontWeight,
      {double? letterSpacing,
        TextDecoration? decoration}
      ) {
    return TextStyle(
      fontFamily: _fontFamily,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      decoration: decoration,
    );
  }

  // Light Mode Text Theme
  static TextTheme createLightTextTheme(ColorScheme colorScheme) {
    return TextTheme(
      // Display Styles (Large, Prominent Headings)
      displayLarge: _baseTextStyle(
          colorScheme.onSurface,
          57,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      displayMedium: _baseTextStyle(
          colorScheme.onSurface,
          45,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.w600,
      ),
      displaySmall: _baseTextStyle(
          colorScheme.onSurface,
          36,
          FontWeight.w400
      ),

      // Headline Styles
      headlineLarge: _baseTextStyle(
          colorScheme.primary,
          32,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: _baseTextStyle(
          colorScheme.primary,
          28,
          FontWeight.w400
      ),
      headlineSmall: _baseTextStyle(
          colorScheme.primary,
          24,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.w500,
      ),

      // Title Styles
      titleLarge: _baseTextStyle(
          colorScheme.onPrimary,
          22,
          FontWeight.w700
      ).copyWith(
        letterSpacing: 0.15,
      ),
      titleMedium: _baseTextStyle(
          colorScheme.secondary,
          16,
          FontWeight.w700
      ).copyWith(
        letterSpacing: 0.15,
      ),
      titleSmall: _baseTextStyle(
          colorScheme.tertiary,
          14,
          FontWeight.w700
      ).copyWith(
        letterSpacing: 0.1,
      ),

      // Body Styles
      bodyLarge: _baseTextStyle(
          colorScheme.onSurfaceVariant,
          16,
          FontWeight.w400
      ).copyWith(
        letterSpacing: 0.5,
      ),
      bodyMedium: _baseTextStyle(
          colorScheme.onSurfaceVariant,
          14,
          FontWeight.w400
      ).copyWith(
        letterSpacing: 0.25,
      ),
      bodySmall: _baseTextStyle(
          colorScheme.onSurfaceVariant,
          12,
          FontWeight.w400
      ).copyWith(
        letterSpacing: 0.4,
      ),

      // Label Styles
      labelLarge: _baseTextStyle(
          colorScheme.primary,
          14,
          FontWeight.w500
      ).copyWith(
        letterSpacing: 0.1,
      ),
      labelMedium: _baseTextStyle(
          colorScheme.secondary,
          12,
          FontWeight.w500
      ).copyWith(
        letterSpacing: 0.5,
      ),
      labelSmall: _baseTextStyle(
          colorScheme.tertiary,
          11,
          FontWeight.w500
      ).copyWith(
        letterSpacing: 0.5,
      ),
    );
  }

  // Dark Mode Text Theme
  static TextTheme createDarkTextTheme(ColorScheme colorScheme) {
    return TextTheme(
      // Display Styles (Large, Prominent Headings)
      displayLarge: _baseTextStyle(
          colorScheme.onSurface,
          57,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      displayMedium: _baseTextStyle(
          colorScheme.onSurface,
          45,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.w600,
      ),
      displaySmall: _baseTextStyle(
          colorScheme.onSurface,
          36,
          FontWeight.w400
      ),

      // Headline Styles
      headlineLarge: _baseTextStyle(
          colorScheme.primary,
          32,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: _baseTextStyle(
          colorScheme.primary,
          28,
          FontWeight.w400
      ),
      headlineSmall: _baseTextStyle(
          colorScheme.primary,
          24,
          FontWeight.w400
      ).copyWith(
        fontWeight: FontWeight.w500,
      ),

      // Title Styles
      titleLarge: _baseTextStyle(
          colorScheme.onSurface,
          22,
          FontWeight.w700
      ).copyWith(
        letterSpacing: 0.15,
      ),
      titleMedium: _baseTextStyle(
          colorScheme.secondary,
          16,
          FontWeight.w700
      ).copyWith(
        letterSpacing: 0.15,
      ),
      titleSmall: _baseTextStyle(
          colorScheme.tertiary,
          14,
          FontWeight.w700
      ).copyWith(
        letterSpacing: 0.1,
      ),

      // Body Styles
      bodyLarge: _baseTextStyle(
          colorScheme.onSurfaceVariant,
          16,
          FontWeight.w400
      ).copyWith(
        letterSpacing: 0.5,
      ),
      bodyMedium: _baseTextStyle(
          colorScheme.onSurfaceVariant,
          14,
          FontWeight.w400
      ).copyWith(
        letterSpacing: 0.25,
      ),
      bodySmall: _baseTextStyle(
          colorScheme.onSurfaceVariant,
          12,
          FontWeight.w400
      ).copyWith(
        letterSpacing: 0.4,
      ),

      // Label Styles
      labelLarge: _baseTextStyle(
          colorScheme.primary,
          14,
          FontWeight.w500
      ).copyWith(
        letterSpacing: 0.1,
      ),
      labelMedium: _baseTextStyle(
          colorScheme.secondary,
          12,
          FontWeight.w500
      ).copyWith(
        letterSpacing: 0.5,
      ),
      labelSmall: _baseTextStyle(
          colorScheme.tertiary,
          11,
          FontWeight.w500
      ).copyWith(
        letterSpacing: 0.5,
      ),
    );
  }

  // Update MaterialTheme to use custom text themes
  static ThemeData createLightTheme(ColorScheme colorScheme, TextTheme textTheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      textTheme: createLightTextTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.background,
      canvasColor: colorScheme.surface,
    );
  }

  static ThemeData createDarkTheme(ColorScheme colorScheme, TextTheme textTheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      textTheme: createDarkTextTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.background,
      canvasColor: colorScheme.surface,
    );
  }
}

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);
  ThemeData light() {
    return CustomTextTheme.createLightTheme(MaterialTheme.lightScheme(), textTheme);
  }
  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }
  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }
  ThemeData dark() {
    return CustomTextTheme.createDarkTheme(MaterialTheme.darkScheme(), textTheme);
  }



  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff655e48),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff201b0a),
      onPrimaryContainer: Color(0xff8b846c),
      secondary: Color(0xff615e57),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa4a098),
      onSecondaryContainer: Color(0xff393731),
      tertiary: Color(0xff000000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff121e17),
      onTertiaryContainer: Color(0xff79877d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffdf8f5),
      onSurface: Color(0xff1c1b19),
      onSurfaceVariant: Color(0xff4a473d),
      outline: Color(0xff7b776c),
      outlineVariant: Color(0xffccc6ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff32302e),
      inversePrimary: Color(0xffcfc6ab),
      primaryFixed: Color(0xffece2c6),
      onPrimaryFixed: Color(0xff201b0a),
      primaryFixedDim: Color(0xffcfc6ab),
      onPrimaryFixedVariant: Color(0xff4c4732),
      secondaryFixed: Color(0xffe7e2d9),
      onSecondaryFixed: Color(0xff1d1c16),
      secondaryFixedDim: Color(0xffcbc6bd),
      onSecondaryFixedVariant: Color(0xff494740),
      tertiaryFixed: Color(0xffd7e6da),
      onTertiaryFixed: Color(0xff121e17),
      tertiaryFixedDim: Color(0xffbbcabe),
      onTertiaryFixedVariant: Color(0xff3c4a41),
      surfaceDim: Color(0xffded9d6),
      surfaceBright: Color(0xfffdf8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3ef),
      surfaceContainer: Color(0xfff2ede9),
      surfaceContainerHigh: Color(0xffece7e4),
      surfaceContainerHighest: Color(0xffe6e2de),
    );
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff655e48),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff201b0a),
      onPrimaryContainer: Color(0xffafa68d),
      secondary: Color(0xff383630),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff706d66),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff000000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff121e17),
      onTertiaryContainer: Color(0xff9caa9f),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8f5),
      onSurface: Color(0xff12110f),
      onSurfaceVariant: Color(0xff39362d),
      outline: Color(0xff565249),
      outlineVariant: Color(0xff716d63),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff32302e),
      inversePrimary: Color(0xffcfc6ab),
      primaryFixed: Color(0xff746d56),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5b553f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff706d66),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff57554e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff627066),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4a584e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcac6c2),
      surfaceBright: Color(0xfffdf8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3ef),
      surfaceContainer: Color(0xffece7e4),
      surfaceContainerHigh: Color(0xffe0dcd9),
      surfaceContainerHighest: Color(0xffd5d1cd),
    );
  }
  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff655e48),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff201b0a),
      onPrimaryContainer: Color(0xffd9d0b5),
      secondary: Color(0xff2e2c26),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4b4942),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff000000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff121e17),
      onTertiaryContainer: Color(0xffc5d4c8),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8f5),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2f2c24),
      outlineVariant: Color(0xff4c4940),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff32302e),
      inversePrimary: Color(0xffcfc6ab),
      primaryFixed: Color(0xff4f4934),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff38331f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4b4942),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff34332d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3f4c43),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff29362d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbcb8b5),
      surfaceBright: Color(0xfffdf8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f0ec),
      surfaceContainer: Color(0xffe6e2de),
      surfaceContainerHigh: Color(0xffd8d4d0),
      surfaceContainerHighest: Color(0xffcac6c2),
    );
  }
  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcfc6ab),
      surfaceTint: Color(0xffcfc6ab),
      onPrimary: Color(0xff35301d),
      primaryContainer: Color(0xff0a0700),
      onPrimaryContainer: Color(0xff7f7861),
      secondary: Color(0xffcbc6bd),
      onSecondary: Color(0xff32302a),
      secondaryContainer: Color(0xffa4a098),
      onSecondaryContainer: Color(0xff393731),
      tertiary: Color(0xffbbcabe),
      onTertiary: Color(0xff26332b),
      tertiaryContainer: Color(0xff010904),
      onTertiaryContainer: Color(0xff6d7c71),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141311),
      onSurface: Color(0xffe6e2de),
      onSurfaceVariant: Color(0xffccc6ba),
      outline: Color(0xff959085),
      outlineVariant: Color(0xff4a473d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e2de),
      inversePrimary: Color(0xff655e48),
      primaryFixed: Color(0xffece2c6),
      onPrimaryFixed: Color(0xff201b0a),
      primaryFixedDim: Color(0xffcfc6ab),
      onPrimaryFixedVariant: Color(0xff4c4732),
      secondaryFixed: Color(0xffe7e2d9),
      onSecondaryFixed: Color(0xff1d1c16),
      secondaryFixedDim: Color(0xffcbc6bd),
      onSecondaryFixedVariant: Color(0xff494740),
      tertiaryFixed: Color(0xffd7e6da),
      onTertiaryFixed: Color(0xff121e17),
      tertiaryFixedDim: Color(0xffbbcabe),
      onTertiaryFixedVariant: Color(0xff3c4a41),
      surfaceDim: Color(0xff141311),
      surfaceBright: Color(0xff3a3937),
      surfaceContainerLowest: Color(0xff0f0e0c),
      surfaceContainerLow: Color(0xff1c1b19),
      surfaceContainer: Color(0xff211f1d),
      surfaceContainerHigh: Color(0xff2b2a28),
      surfaceContainerHighest: Color(0xff363432),
    );
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: colorScheme.brightness == Brightness.light
        ? createLightTextTheme(colorScheme)
        : createDarkTextTheme(colorScheme),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );

  // Helper methods to create theme-specific text themes directly in this class
  TextTheme createLightTextTheme(ColorScheme colorScheme) {
    return CustomTextTheme.createLightTextTheme(colorScheme);
  }

  TextTheme createDarkTextTheme(ColorScheme colorScheme) {
    return CustomTextTheme.createDarkTextTheme(colorScheme);
  }










  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}