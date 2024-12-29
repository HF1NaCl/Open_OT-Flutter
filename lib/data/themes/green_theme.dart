import "package:flutter/material.dart";

class GreenMaterialTheme {
  final TextTheme textTheme;

  const GreenMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278218284),
      surfaceTint: Color(4278218284),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280480108),
      onPrimaryContainer: Color(4278208538),
      secondary: Color(4279004462),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4288871595),
      onSecondaryContainer: Color(4278212385),
      tertiary: Color(4278216573),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285783807),
      onTertiaryContainer: Color(4278207314),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294114797),
      onSurface: Color(4279574037),
      onSurfaceVariant: Color(4282075963),
      outline: Color(4285234026),
      outlineVariant: Color(4290431927),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4280890153),
      inversePrimary: Color(4278248803),
      primaryFixed: Color(4285071241),
      onPrimaryFixed: Color(4278198536),
      primaryFixedDim: Color(4278248803),
      onPrimaryFixedVariant: Color(4278211359),
      secondaryFixed: Color(4288542630),
      onSecondaryFixed: Color(4278198536),
      secondaryFixedDim: Color(4286765709),
      onSecondaryFixedVariant: Color(4278211359),
      tertiaryFixed: Color(4289981439),
      onTertiaryFixed: Color(4278198055),
      tertiaryFixedDim: Color(4283160316),
      onTertiaryFixedVariant: Color(4278210143),
      surfaceDim: Color(4292009422),
      surfaceBright: Color(4294114797),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293720040),
      surfaceContainer: Color(4293325282),
      surfaceContainerHigh: Color(4292930524),
      surfaceContainerHighest: Color(4292601559),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278210077),
      surfaceTint: Color(4278218284),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278224695),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278210077),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281173314),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278208858),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278222746),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294114797),
      onSurface: Color(4279574037),
      onSurfaceVariant: Color(4281878327),
      outline: Color(4283654995),
      outlineVariant: Color(4285497197),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4280890153),
      inversePrimary: Color(4278248803),
      primaryFixed: Color(4278224695),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278217514),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281173314),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278610731),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278222746),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278216058),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292009422),
      surfaceBright: Color(4294114797),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293720040),
      surfaceContainer: Color(4293325282),
      surfaceContainerHigh: Color(4292930524),
      surfaceContainerHighest: Color(4292601559),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200588),
      surfaceTint: Color(4278218284),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278210077),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278200588),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278210077),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278199856),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278208858),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294114797),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4279838490),
      outline: Color(4281878327),
      outlineVariant: Color(4281878327),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4280890153),
      inversePrimary: Color(4289658804),
      primaryFixed: Color(4278210077),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203665),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278210077),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278203665),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278208858),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202941),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292009422),
      surfaceBright: Color(4294114797),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293720040),
      surfaceContainer: Color(4293325282),
      surfaceContainerHigh: Color(4292930524),
      surfaceContainerHighest: Color(4292601559),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290117562),
      surfaceTint: Color(4278248803),
      onPrimary: Color(4278204691),
      primaryContainer: Color(4278247778),
      onPrimaryContainer: Color(4278205717),
      secondary: Color(4286765709),
      onSecondary: Color(4278204691),
      secondaryContainer: Color(4278213667),
      onSecondaryContainer: Color(4290248635),
      tertiary: Color(4292211711),
      onTertiary: Color(4278203970),
      tertiaryContainer: Color(4282963194),
      onTertiaryContainer: Color(4278205000),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4278982157),
      onSurface: Color(4292601559),
      onSurfaceVariant: Color(4290431927),
      outline: Color(4286944643),
      outlineVariant: Color(4282075963),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292601559),
      inversePrimary: Color(4278218284),
      primaryFixed: Color(4285071241),
      onPrimaryFixed: Color(4278198536),
      primaryFixedDim: Color(4278248803),
      onPrimaryFixedVariant: Color(4278211359),
      secondaryFixed: Color(4288542630),
      onSecondaryFixed: Color(4278198536),
      secondaryFixedDim: Color(4286765709),
      onSecondaryFixedVariant: Color(4278211359),
      tertiaryFixed: Color(4289981439),
      onTertiaryFixed: Color(4278198055),
      tertiaryFixedDim: Color(4283160316),
      onTertiaryFixedVariant: Color(4278210143),
      surfaceDim: Color(4278982157),
      surfaceBright: Color(4281482289),
      surfaceContainerLowest: Color(4278718472),
      surfaceContainerLow: Color(4279574037),
      surfaceContainer: Color(4279837209),
      surfaceContainerHigh: Color(4280495139),
      surfaceContainerHighest: Color(4281218861),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290117562),
      surfaceTint: Color(4278248803),
      onPrimary: Color(4278204691),
      primaryContainer: Color(4278247778),
      onPrimaryContainer: Color(4278194179),
      secondary: Color(4287028880),
      onSecondary: Color(4278196998),
      secondaryContainer: Color(4283212379),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292211711),
      onTertiary: Color(4278203970),
      tertiaryContainer: Color(4282963194),
      onTertiaryContainer: Color(4278194198),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4278982157),
      onSurface: Color(4294180591),
      onSurfaceVariant: Color(4290695099),
      outline: Color(4288128916),
      outlineVariant: Color(4286023542),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292601559),
      inversePrimary: Color(4278211616),
      primaryFixed: Color(4285071241),
      onPrimaryFixed: Color(4278195460),
      primaryFixedDim: Color(4278248803),
      onPrimaryFixedVariant: Color(4278206486),
      secondaryFixed: Color(4288542630),
      onSecondaryFixed: Color(4278195460),
      secondaryFixedDim: Color(4286765709),
      onSecondaryFixedVariant: Color(4278206486),
      tertiaryFixed: Color(4289981439),
      onTertiaryFixed: Color(4278195226),
      tertiaryFixedDim: Color(4283160316),
      onTertiaryFixedVariant: Color(4278205514),
      surfaceDim: Color(4278982157),
      surfaceBright: Color(4281482289),
      surfaceContainerLowest: Color(4278718472),
      surfaceContainerLow: Color(4279574037),
      surfaceContainer: Color(4279837209),
      surfaceContainerHigh: Color(4280495139),
      surfaceContainerHighest: Color(4281218861),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293984236),
      surfaceTint: Color(4278248803),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4278708582),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293984236),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4287028880),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294311167),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4283947775),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4278982157),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4293984236),
      outline: Color(4290695099),
      outlineVariant: Color(4290695099),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292601559),
      inversePrimary: Color(4278202896),
      primaryFixed: Color(4287496094),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4278708582),
      onPrimaryFixedVariant: Color(4278196998),
      secondaryFixed: Color(4288871338),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4287028880),
      onSecondaryFixedVariant: Color(4278196998),
      tertiaryFixed: Color(4290834175),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4283947775),
      onTertiaryFixedVariant: Color(4278196513),
      surfaceDim: Color(4278982157),
      surfaceBright: Color(4281482289),
      surfaceContainerLowest: Color(4278718472),
      surfaceContainerLow: Color(4279574037),
      surfaceContainer: Color(4279837209),
      surfaceContainerHigh: Color(4280495139),
      surfaceContainerHighest: Color(4281218861),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


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