import 'package:flutter/material.dart';
import 'dark.dart';
import 'light.dart';

extension ThemeX on ThemeData {
  XTheme waggle() =>
      brightness == Brightness.light ? lightColorTheme : darkColorTheme;
}

class XTheme {
  final Color primary;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color outline;
  final SurfaceTheme surface;
  final OnSurfaceTheme onSurface;
  final OnBackgroundTheme onBackground;

  const XTheme({
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.outline,
    required this.surface,
    required this.onSurface,
    required this.onBackground,
  });
}

class SurfaceTheme {
  final Color surface;
  final Color surfaceVariant;
  final Color surface1;
  final Color surface2;
  final Color surface3;
  final Color surface4;
  final Color surface5;

  const SurfaceTheme({
    required this.surface,
    required this.surfaceVariant,
    required this.surface1,
    required this.surface2,
    required this.surface3,
    required this.surface4,
    required this.surface5,
  });
}

class OnSurfaceTheme {
  final Color onSurface;
  final Color onSurfaceVariant;
  final Color onSurfaceHigh;
  final Color onSurfaceMedium;
  final Color onSurfaceDisabled;

  const OnSurfaceTheme({
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.onSurfaceHigh,
    required this.onSurfaceMedium,
    required this.onSurfaceDisabled,
  });
}

class OnBackgroundTheme {
  final Color onBackground;
  final Color onBackgroundHigh;
  final Color onBackgroundMedium;
  final Color onBackgroundDisabled;

  const OnBackgroundTheme({
    required this.onBackground,
    required this.onBackgroundHigh,
    required this.onBackgroundMedium,
    required this.onBackgroundDisabled,
  });
}
