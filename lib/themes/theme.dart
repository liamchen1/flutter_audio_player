import "package:flutter/material.dart";
// 这里是 https://material-foundation.github.io/material-theme-builder/ 官网生成的material3 样式
class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287899136),
      surfaceTint: Color(4289410319),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4291250467),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4287515705),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294947999),
      onSecondaryContainer: Color(4284228885),
      tertiary: Color(4285815552),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291340362),
      onTertiaryContainer: Color(4280950528),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965494),
      onSurface: Color(4280621333),
      onSurfaceVariant: Color(4284039483),
      outline: Color(4287394153),
      outlineVariant: Color(4292919223),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282133801),
      inversePrimary: Color(4294948256),
      primaryFixed: Color(4294958033),
      onPrimaryFixed: Color(4282059008),
      primaryFixedDim: Color(4294948256),
      onPrimaryFixedVariant: Color(4286980608),
      secondaryFixed: Color(4294958033),
      onSecondaryFixed: Color(4281928449),
      secondaryFixedDim: Color(4294948256),
      onSecondaryFixedVariant: Color(4285609252),
      tertiaryFixed: Color(4294959243),
      onTertiaryFixed: Color(4280556032),
      tertiaryFixedDim: Color(4293247842),
      onTertiaryFixedVariant: Color(4283974656),
      surfaceDim: Color(4293776847),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294961636),
      surfaceContainerHigh: Color(4294697949),
      surfaceContainerHighest: Color(4294368727),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4286586880),
      surfaceTint: Color(4289410319),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4291250467),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4285280800),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289290829),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283646208),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287459606),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4280621333),
      onSurfaceVariant: Color(4283710775),
      outline: Color(4285749586),
      outlineVariant: Color(4287657069),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282133801),
      inversePrimary: Color(4294948256),
      primaryFixed: Color(4291382052),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4289213196),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289290829),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287318583),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287459606),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285618432),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293776847),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294961636),
      surfaceContainerHigh: Color(4294697949),
      surfaceContainerHighest: Color(4294368727),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282780928),
      surfaceTint: Color(4289410319),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286586880),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282520068),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285280800),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281082112),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283646208),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281474842),
      outline: Color(4283710775),
      outlineVariant: Color(4283710775),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282133801),
      inversePrimary: Color(4294961121),
      primaryFixed: Color(4286586880),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284027648),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285280800),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283440141),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283646208),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281871104),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293776847),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294961636),
      surfaceContainerHigh: Color(4294697949),
      surfaceContainerHighest: Color(4294368727),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948256),
      surfaceTint: Color(4294948256),
      onPrimary: Color(4284421376),
      primaryContainer: Color(4289081867),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4294948256),
      onSecondary: Color(4283768848),
      secondaryContainer: Color(4284820507),
      onSecondaryContainer: Color(4294951858),
      tertiary: Color(4294234478),
      onTertiary: Color(4282199808),
      tertiaryContainer: Color(4291340362),
      onTertiaryContainer: Color(4280884992),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4280029453),
      onSurface: Color(4294368727),
      onSurfaceVariant: Color(4292919223),
      outline: Color(4289235586),
      outlineVariant: Color(4284039483),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294368727),
      inversePrimary: Color(4289410319),
      primaryFixed: Color(4294958033),
      onPrimaryFixed: Color(4282059008),
      primaryFixedDim: Color(4294948256),
      onPrimaryFixedVariant: Color(4286980608),
      secondaryFixed: Color(4294958033),
      onSecondaryFixed: Color(4281928449),
      secondaryFixedDim: Color(4294948256),
      onSecondaryFixedVariant: Color(4285609252),
      tertiaryFixed: Color(4294959243),
      onTertiaryFixed: Color(4280556032),
      tertiaryFixedDim: Color(4293247842),
      onTertiaryFixedVariant: Color(4283974656),
      surfaceDim: Color(4280029453),
      surfaceBright: Color(4282725938),
      surfaceContainerLowest: Color(4279634696),
      surfaceContainerLow: Color(4280621333),
      surfaceContainer: Color(4280884505),
      surfaceContainerHigh: Color(4281673507),
      surfaceContainerHighest: Color(4282396973),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949799),
      surfaceTint: Color(4294948256),
      onPrimary: Color(4281403136),
      primaryContainer: Color(4293879357),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949799),
      onSecondary: Color(4281403136),
      secondaryContainer: Color(4291460455),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294234478),
      onTertiary: Color(4280819200),
      tertiaryContainer: Color(4291340362),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4280029453),
      onSurface: Color(4294965752),
      onSurfaceVariant: Color(4293248187),
      outline: Color(4290485396),
      outlineVariant: Color(4288249205),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294368727),
      inversePrimary: Color(4287177216),
      primaryFixed: Color(4294958033),
      onPrimaryFixed: Color(4280812800),
      primaryFixedDim: Color(4294948256),
      onPrimaryFixedVariant: Color(4285077504),
      secondaryFixed: Color(4294958033),
      onSecondaryFixed: Color(4280812800),
      secondaryFixedDim: Color(4294948256),
      onSecondaryFixedVariant: Color(4284228885),
      tertiaryFixed: Color(4294959243),
      onTertiaryFixed: Color(4279701504),
      tertiaryFixedDim: Color(4293247842),
      onTertiaryFixedVariant: Color(4282659840),
      surfaceDim: Color(4280029453),
      surfaceBright: Color(4282725938),
      surfaceContainerLowest: Color(4279634696),
      surfaceContainerLow: Color(4280621333),
      surfaceContainer: Color(4280884505),
      surfaceContainerHigh: Color(4281673507),
      surfaceContainerHighest: Color(4282396973),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965752),
      surfaceTint: Color(4294948256),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949799),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949799),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966006),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293576550),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4280029453),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965752),
      outline: Color(4293248187),
      outlineVariant: Color(4293248187),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294368727),
      inversePrimary: Color(4283699712),
      primaryFixed: Color(4294959320),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949799),
      onPrimaryFixedVariant: Color(4281403136),
      secondaryFixed: Color(4294959320),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949799),
      onSecondaryFixedVariant: Color(4281403136),
      tertiaryFixed: Color(4294960545),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293576550),
      onTertiaryFixedVariant: Color(4280096000),
      surfaceDim: Color(4280029453),
      surfaceBright: Color(4282725938),
      surfaceContainerLowest: Color(4279634696),
      surfaceContainerLow: Color(4280621333),
      surfaceContainer: Color(4280884505),
      surfaceContainerHigh: Color(4281673507),
      surfaceContainerHighest: Color(4282396973),
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

  /// basetitile
  static const basetitile = ExtendedColor(
    seed: Color(4291896166),
    value: Color(4291896166),
    light: ColorFamily(
      color: Color(4288020548),
      onColor: Color(4294967295),
      colorContainer: Color(4291896166),
      onColorContainer: Color(4294967295),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(4288020548),
      onColor: Color(4294967295),
      colorContainer: Color(4291896166),
      onColorContainer: Color(4294967295),
    ),
    lightHighContrast: ColorFamily(
      color: Color(4288020548),
      onColor: Color(4294967295),
      colorContainer: Color(4291896166),
      onColorContainer: Color(4294967295),
    ),
    dark: ColorFamily(
      color: Color(4294947266),
      onColor: Color(4284874796),
      colorContainer: Color(4291106398),
      onColorContainer: Color(4294967295),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(4294947266),
      onColor: Color(4284874796),
      colorContainer: Color(4291106398),
      onColorContainer: Color(4294967295),
    ),
    darkHighContrast: ColorFamily(
      color: Color(4294947266),
      onColor: Color(4284874796),
      colorContainer: Color(4291106398),
      onColorContainer: Color(4294967295),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    basetitile,
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
