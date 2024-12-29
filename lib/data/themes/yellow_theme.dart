import "package:flutter/material.dart";

class YellowMaterialTheme {
  final TextTheme textTheme;

  const YellowMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285881088),
      surfaceTint: Color(4285881088),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294955081),
      onPrimaryContainer: Color(4283448832),
      secondary: Color(4285684765),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294960291),
      onSecondaryContainer: Color(4284237833),
      tertiary: Color(4283655680),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291093327),
      onTertiaryContainer: Color(4281878016),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965489),
      onSurface: Color(4280294160),
      onSurfaceVariant: Color(4283319858),
      outline: Color(4286608991),
      outlineVariant: Color(4292003243),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281675812),
      inversePrimary: Color(4294164480),
      primaryFixed: Color(4294958993),
      onPrimaryFixed: Color(4280556032),
      primaryFixedDim: Color(4294164480),
      onPrimaryFixedVariant: Color(4284040192),
      secondaryFixed: Color(4294893715),
      onSecondaryFixed: Color(4280556032),
      secondaryFixedDim: Color(4292985978),
      onSecondaryFixedVariant: Color(4283974661),
      tertiaryFixed: Color(4291883099),
      onTertiaryFixed: Color(4279705088),
      tertiaryFixedDim: Color(4290040641),
      onTertiaryFixedVariant: Color(4282272768),
      surfaceDim: Color(4293122503),
      surfaceBright: Color(4294965489),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294832864),
      surfaceContainer: Color(4294438363),
      surfaceContainerHigh: Color(4294043605),
      surfaceContainerHighest: Color(4293714384),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283711488),
      surfaceTint: Color(4285881088),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4287655936),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283711489),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287263281),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282009600),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284972288),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965489),
      onSurface: Color(4280294160),
      onSurfaceVariant: Color(4283056686),
      outline: Color(4285029961),
      outlineVariant: Color(4286872163),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281675812),
      inversePrimary: Color(4294164480),
      primaryFixed: Color(4287655936),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4285683968),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287263281),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285487387),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284972288),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283523840),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293122503),
      surfaceBright: Color(4294965489),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294832864),
      surfaceContainer: Color(4294438363),
      surfaceContainerHigh: Color(4294043605),
      surfaceContainerHighest: Color(4293714384),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281082112),
      surfaceTint: Color(4285881088),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283711488),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281082112),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283711489),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280100096),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282009600),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965489),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280951570),
      outline: Color(4283056686),
      outlineVariant: Color(4283056686),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281675812),
      inversePrimary: Color(4294961852),
      primaryFixed: Color(4283711488),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281936640),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283711489),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281936640),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282009600),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280758528),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293122503),
      surfaceBright: Color(4294965489),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294832864),
      surfaceContainer: Color(4294438363),
      surfaceContainerHigh: Color(4294043605),
      surfaceContainerHighest: Color(4293714384),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294964447),
      surfaceTint: Color(4294164480),
      onPrimary: Color(4282199552),
      primaryContainer: Color(4294492928),
      onPrimaryContainer: Color(4282922752),
      secondary: Color(4292985978),
      onSecondary: Color(4282199552),
      secondaryContainer: Color(4283383040),
      onSecondaryContainer: Color(4293906822),
      tertiary: Color(4293459863),
      onTertiary: Color(4280955904),
      tertiaryContainer: Color(4290303812),
      onTertiaryContainer: Color(4281416960),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279702281),
      onSurface: Color(4293714384),
      onSurfaceVariant: Color(4292003243),
      outline: Color(4288385144),
      outlineVariant: Color(4283319858),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293714384),
      inversePrimary: Color(4285881088),
      primaryFixed: Color(4294958993),
      onPrimaryFixed: Color(4280556032),
      primaryFixedDim: Color(4294164480),
      onPrimaryFixedVariant: Color(4284040192),
      secondaryFixed: Color(4294893715),
      onSecondaryFixed: Color(4280556032),
      secondaryFixedDim: Color(4292985978),
      onSecondaryFixedVariant: Color(4283974661),
      tertiaryFixed: Color(4291883099),
      onTertiaryFixed: Color(4279705088),
      tertiaryFixedDim: Color(4290040641),
      onTertiaryFixedVariant: Color(4282272768),
      surfaceDim: Color(4279702281),
      surfaceBright: Color(4282267948),
      surfaceContainerLowest: Color(4279373317),
      surfaceContainerLow: Color(4280294160),
      surfaceContainer: Color(4280557332),
      surfaceContainerHigh: Color(4281215262),
      surfaceContainerHighest: Color(4282004520),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294964447),
      surfaceTint: Color(4294164480),
      onPrimary: Color(4282199552),
      primaryContainer: Color(4294492928),
      onPrimaryContainer: Color(4280096000),
      secondary: Color(4293249150),
      onSecondary: Color(4280161536),
      secondaryContainer: Color(4289236554),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293459863),
      onTertiary: Color(4280955904),
      tertiaryContainer: Color(4290303812),
      onTertiaryContainer: Color(4279375872),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279702281),
      onSurface: Color(4294966006),
      onSurfaceVariant: Color(4292266415),
      outline: Color(4289634953),
      outlineVariant: Color(4287464043),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293714384),
      inversePrimary: Color(4284105984),
      primaryFixed: Color(4294958993),
      onPrimaryFixed: Color(4279767040),
      primaryFixedDim: Color(4294164480),
      onPrimaryFixedVariant: Color(4282659840),
      secondaryFixed: Color(4294893715),
      onSecondaryFixed: Color(4279767040),
      secondaryFixedDim: Color(4292985978),
      onSecondaryFixedVariant: Color(4282659840),
      tertiaryFixed: Color(4291883099),
      onTertiaryFixed: Color(4279112448),
      tertiaryFixedDim: Color(4290040641),
      onTertiaryFixedVariant: Color(4281285376),
      surfaceDim: Color(4279702281),
      surfaceBright: Color(4282267948),
      surfaceContainerLowest: Color(4279373317),
      surfaceContainerLow: Color(4280294160),
      surfaceContainer: Color(4280557332),
      surfaceContainerHigh: Color(4281215262),
      surfaceContainerHighest: Color(4282004520),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966006),
      surfaceTint: Color(4294164480),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294492928),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966006),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293249150),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294508499),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290303812),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279702281),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966006),
      outline: Color(4292266415),
      outlineVariant: Color(4292266415),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293714384),
      inversePrimary: Color(4281739264),
      primaryFixed: Color(4294960293),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294558720),
      onPrimaryFixedVariant: Color(4280161536),
      secondaryFixed: Color(4294960293),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293249150),
      onSecondaryFixedVariant: Color(4280161536),
      tertiaryFixed: Color(4292146271),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290369349),
      onTertiaryFixedVariant: Color(4279376128),
      surfaceDim: Color(4279702281),
      surfaceBright: Color(4282267948),
      surfaceContainerLowest: Color(4279373317),
      surfaceContainerLow: Color(4280294160),
      surfaceContainer: Color(4280557332),
      surfaceContainerHigh: Color(4281215262),
      surfaceContainerHighest: Color(4282004520),
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
