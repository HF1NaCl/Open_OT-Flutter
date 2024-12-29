import "package:flutter/material.dart";

class BlueMaterialTheme {
  final TextTheme textTheme;

  const BlueMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278204842),
      surfaceTint: Color(4278210532),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278212858),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282669731),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289247999),
      onSecondaryContainer: Color(4279052656),
      tertiary: Color(4285792405),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288819399),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294637823),
      onSurface: Color(4279835428),
      onSurfaceVariant: Color(4282598998),
      outline: Color(4285757064),
      outlineVariant: Color(4291020249),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217082),
      inversePrimary: Color(4290168063),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278195790),
      primaryFixedDim: Color(4290168063),
      onPrimaryFixedVariant: Color(4278205359),
      secondaryFixed: Color(4292665855),
      onSecondaryFixed: Color(4278195790),
      secondaryFixedDim: Color(4290168063),
      onSecondaryFixedVariant: Color(4281025161),
      tertiaryFixed: Color(4294694911),
      onTertiaryFixed: Color(4281532484),
      tertiaryFixedDim: Color(4293964031),
      onTertiaryFixedVariant: Color(4285989017),
      surfaceDim: Color(4292467174),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177535),
      surfaceContainer: Color(4293783034),
      surfaceContainerHigh: Color(4293388276),
      surfaceContainerHighest: Color(4292993519),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278204582),
      surfaceTint: Color(4278210532),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278212858),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280761989),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284182971),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4285595794),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288819399),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294637823),
      onSurface: Color(4279835428),
      onSurfaceVariant: Color(4282335826),
      outline: Color(4284178031),
      outlineVariant: Color(4286020235),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217082),
      inversePrimary: Color(4290168063),
      primaryFixed: Color(4281231359),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278210014),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284182971),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282538144),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4289740757),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287897017),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467174),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177535),
      surfaceContainer: Color(4293783034),
      surfaceContainerHigh: Color(4293388276),
      surfaceContainerHighest: Color(4292993519),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278197341),
      surfaceTint: Color(4278210532),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278204582),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278197341),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280761989),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282253393),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285595794),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294637823),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280296242),
      outline: Color(4282335826),
      outlineVariant: Color(4282335826),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217082),
      inversePrimary: Color(4293520383),
      primaryFixed: Color(4278204582),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278199669),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4280761989),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278789742),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285595794),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283301990),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467174),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177535),
      surfaceContainer: Color(4293783034),
      surfaceContainerHigh: Color(4293388276),
      surfaceContainerHighest: Color(4292993519),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290168063),
      surfaceTint: Color(4290168063),
      onPrimary: Color(4278200445),
      primaryContainer: Color(4278210789),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4290168063),
      onSecondary: Color(4279183986),
      secondaryContainer: Color(4280499074),
      onSecondaryContainer: Color(4291417087),
      tertiary: Color(4293964031),
      onTertiary: Color(4283695213),
      tertiaryContainer: Color(4288160957),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279309084),
      onSurface: Color(4292993519),
      onSurfaceVariant: Color(4291020249),
      outline: Color(4287467682),
      outlineVariant: Color(4282598998),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993519),
      inversePrimary: Color(4278210532),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278195790),
      primaryFixedDim: Color(4290168063),
      onPrimaryFixedVariant: Color(4278205359),
      secondaryFixed: Color(4292665855),
      onSecondaryFixed: Color(4278195790),
      secondaryFixedDim: Color(4290168063),
      onSecondaryFixedVariant: Color(4281025161),
      tertiaryFixed: Color(4294694911),
      onTertiaryFixed: Color(4281532484),
      tertiaryFixedDim: Color(4293964031),
      onTertiaryFixedVariant: Color(4285989017),
      surfaceDim: Color(4279309084),
      surfaceBright: Color(4281809219),
      surfaceContainerLowest: Color(4278980119),
      surfaceContainerLow: Color(4279835428),
      surfaceContainer: Color(4280098601),
      surfaceContainerHigh: Color(4280756787),
      surfaceContainerHighest: Color(4281480254),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290497023),
      surfaceTint: Color(4290168063),
      onPrimary: Color(4278194499),
      primaryContainer: Color(4284910335),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290497023),
      onSecondary: Color(4278194499),
      secondaryContainer: Color(4286090714),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294096639),
      onTertiary: Color(4281008186),
      tertiaryContainer: Color(4291846132),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309084),
      onSurface: Color(4294769407),
      onSurfaceVariant: Color(4291283677),
      outline: Color(4288651956),
      outlineVariant: Color(4286546580),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993519),
      inversePrimary: Color(4278205617),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278193463),
      primaryFixedDim: Color(4290168063),
      onPrimaryFixedVariant: Color(4278201738),
      secondaryFixed: Color(4292665855),
      onSecondaryFixed: Color(4278193463),
      secondaryFixedDim: Color(4290168063),
      onSecondaryFixedVariant: Color(4279710072),
      tertiaryFixed: Color(4294694911),
      onTertiaryFixed: Color(4280483887),
      tertiaryFixedDim: Color(4293964031),
      onTertiaryFixedVariant: Color(4284285048),
      surfaceDim: Color(4279309084),
      surfaceBright: Color(4281809219),
      surfaceContainerLowest: Color(4278980119),
      surfaceContainerLow: Color(4279835428),
      surfaceContainer: Color(4280098601),
      surfaceContainerHigh: Color(4280756787),
      surfaceContainerHighest: Color(4281480254),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294769407),
      surfaceTint: Color(4290168063),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290497023),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294769407),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290497023),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294096639),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309084),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294769407),
      outline: Color(4291283677),
      outlineVariant: Color(4291283677),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993519),
      inversePrimary: Color(4278198895),
      primaryFixed: Color(4293060351),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290497023),
      onPrimaryFixedVariant: Color(4278194499),
      secondaryFixed: Color(4293060351),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290497023),
      onSecondaryFixedVariant: Color(4278194499),
      tertiaryFixed: Color(4294761983),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294096639),
      onTertiaryFixedVariant: Color(4281008186),
      surfaceDim: Color(4279309084),
      surfaceBright: Color(4281809219),
      surfaceContainerLowest: Color(4278980119),
      surfaceContainerLow: Color(4279835428),
      surfaceContainer: Color(4280098601),
      surfaceContainerHigh: Color(4280756787),
      surfaceContainerHighest: Color(4281480254),
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