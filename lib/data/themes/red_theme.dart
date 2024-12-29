import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4286971933),
      surfaceTint: Color(4290450224),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4290911029),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4288691522),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294939797),
      onSecondaryContainer: Color(4283761424),
      tertiary: Color(4285018624),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288237841),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965495),
      onSurface: Color(4280751895),
      onSurfaceVariant: Color(4284170304),
      outline: Color(4287590255),
      outlineVariant: Color(4293115581),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282264620),
      inversePrimary: Color(4294947762),
      primaryFixed: Color(4294957785),
      onPrimaryFixed: Color(4282449929),
      primaryFixedDim: Color(4294947762),
      onPrimaryFixedVariant: Color(4287758368),
      secondaryFixed: Color(4294957785),
      onSecondaryFixed: Color(4282449929),
      secondaryFixedDim: Color(4294947762),
      onSecondaryFixedVariant: Color(4286653997),
      tertiaryFixed: Color(4294958278),
      onTertiaryFixed: Color(4281340928),
      tertiaryFixedDim: Color(4294948741),
      onTertiaryFixedVariant: Color(4285609728),
      surfaceDim: Color(4293972946),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963439),
      surfaceContainer: Color(4294961640),
      surfaceContainerHigh: Color(4294959584),
      surfaceContainerHighest: Color(4294565083),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4286971933),
      surfaceTint: Color(4290450224),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4290911029),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4286325289),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4290597719),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4285018624),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288237841),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965495),
      onSurface: Color(4280751895),
      onSurfaceVariant: Color(4283907132),
      outline: Color(4285880407),
      outlineVariant: Color(4287853426),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282264620),
      inversePrimary: Color(4294947762),
      primaryFixed: Color(4292554820),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4290187054),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4290597719),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4288494400),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4289618210),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287580424),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293972946),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963439),
      surfaceContainer: Color(4294961640),
      surfaceContainerHigh: Color(4294959584),
      surfaceContainerHighest: Color(4294565083),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283236364),
      surfaceTint: Color(4290450224),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4287299614),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283236364),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286325289),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281997568),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285215744),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965495),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281605662),
      outline: Color(4283907132),
      outlineVariant: Color(4283907132),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282264620),
      inversePrimary: Color(4294960870),
      primaryFixed: Color(4287299614),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284547090),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286325289),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284287253),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285215744),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283048448),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293972946),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963439),
      surfaceContainer: Color(4294961640),
      surfaceContainerHigh: Color(4294959584),
      surfaceContainerHighest: Color(4294565083),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947762),
      surfaceTint: Color(4294947762),
      onPrimary: Color(4285005844),
      primaryContainer: Color(4288413731),
      onPrimaryContainer: Color(4294959841),
      secondary: Color(4294947762),
      onSecondary: Color(4284616216),
      secondaryContainer: Color(4285996838),
      onSecondaryContainer: Color(4294952902),
      tertiary: Color(4294948741),
      onTertiary: Color(4283442432),
      tertiaryContainer: Color(4286069504),
      onTertiaryContainer: Color(4294960082),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4280160015),
      onSurface: Color(4294565083),
      onSurfaceVariant: Color(4293115581),
      outline: Color(4289366152),
      outlineVariant: Color(4284170304),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294565083),
      inversePrimary: Color(4290450224),
      primaryFixed: Color(4294957785),
      onPrimaryFixed: Color(4282449929),
      primaryFixedDim: Color(4294947762),
      onPrimaryFixedVariant: Color(4287758368),
      secondaryFixed: Color(4294957785),
      onSecondaryFixed: Color(4282449929),
      secondaryFixedDim: Color(4294947762),
      onSecondaryFixedVariant: Color(4286653997),
      tertiaryFixed: Color(4294958278),
      onTertiaryFixed: Color(4281340928),
      tertiaryFixedDim: Color(4294948741),
      onTertiaryFixedVariant: Color(4285609728),
      surfaceDim: Color(4280160015),
      surfaceBright: Color(4282856756),
      surfaceContainerLowest: Color(4279765514),
      surfaceContainerLow: Color(4280751895),
      surfaceContainer: Color(4281080603),
      surfaceContainerHigh: Color(4281804325),
      surfaceContainerHighest: Color(4282527792),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949304),
      surfaceTint: Color(4294947762),
      onPrimary: Color(4281794566),
      primaryContainer: Color(4294922847),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949304),
      onSecondary: Color(4281794566),
      secondaryContainer: Color(4292898417),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294950031),
      onTertiary: Color(4280815360),
      tertiaryContainer: Color(4291853371),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4280160015),
      onSurface: Color(4294965753),
      onSurfaceVariant: Color(4293444289),
      outline: Color(4290681498),
      outlineVariant: Color(4288445307),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294565083),
      inversePrimary: Color(4287889441),
      primaryFixed: Color(4294957785),
      onPrimaryFixed: Color(4281139204),
      primaryFixedDim: Color(4294947762),
      onPrimaryFixedVariant: Color(4285726743),
      secondaryFixed: Color(4294957785),
      onSecondaryFixed: Color(4281139204),
      secondaryFixedDim: Color(4294947762),
      onSecondaryFixedVariant: Color(4285142302),
      tertiaryFixed: Color(4294958278),
      onTertiaryFixed: Color(4280355584),
      tertiaryFixedDim: Color(4294948741),
      onTertiaryFixedVariant: Color(4283967744),
      surfaceDim: Color(4280160015),
      surfaceBright: Color(4282856756),
      surfaceContainerLowest: Color(4279765514),
      surfaceContainerLow: Color(4280751895),
      surfaceContainer: Color(4281080603),
      surfaceContainerHigh: Color(4281804325),
      surfaceContainerHighest: Color(4282527792),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947762),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949304),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949304),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294950031),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4280160015),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4293444289),
      outlineVariant: Color(4293444289),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294565083),
      inversePrimary: Color(4284219409),
      primaryFixed: Color(4294959327),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949304),
      onPrimaryFixedVariant: Color(4281794566),
      secondaryFixed: Color(4294959327),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949304),
      onSecondaryFixedVariant: Color(4281794566),
      tertiaryFixed: Color(4294959567),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294950031),
      onTertiaryFixedVariant: Color(4280815360),
      surfaceDim: Color(4280160015),
      surfaceBright: Color(4282856756),
      surfaceContainerLowest: Color(4279765514),
      surfaceContainerLow: Color(4280751895),
      surfaceContainer: Color(4281080603),
      surfaceContainerHigh: Color(4281804325),
      surfaceContainerHighest: Color(4282527792),
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
