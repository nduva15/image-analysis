import 'package:flutter/material.dart';

import 'common.dart';
import 'waggle_dance.dart';

const XTheme lightColorTheme = XTheme(
  primary: Color(0xff2E5DA8),
  onPrimary: Color(0xffFFFFFF),
  primaryContainer: Color(0xffD6E2FF),
  onPrimaryContainer: Color(0xff001A41),
  secondary: Color(0xffFFD800),
  onSecondary: Color(0xff4A3F02),
  secondaryContainer: Color(0xffFFF4B2),
  onSecondaryContainer: Color(0xff4A3F02),
  error: Color(0xffBA1B1B),
  onError: Color(0xffFFFFFF),
  errorContainer: Color(0xffFFDAD4),
  onErrorContainer: Color(0xff410001),
  background: Color(0xffFFD800),
  outline: Color(0xff74777F),
  surface: SurfaceTheme(
    surface: Color(0xffFDFBFF),
    surfaceVariant: Color(0xff1A1B1F),
    surface1: Color(0xffFDF9F2),
    surface2: Color(0xffFDF8EB),
    surface3: Color(0xffFDF7E3),
    surface4: Color(0xffFDF7E0),
    surface5: Color(0xffFDF6DB),
  ),
  onSurface: OnSurfaceTheme(
    onSurface: Color(0xff1A1B1F),
    onSurfaceVariant: Color(0xffC7C6CA),
    onSurfaceHigh: Color(0xDE1A1B1F),
    onSurfaceMedium: Color(0xA61A1B1F),
    onSurfaceDisabled: Color(0x611A1B1F),
  ),
  onBackground: OnBackgroundTheme(
    onBackground: Color(0xff1A1B1F),
    onBackgroundHigh: Color(0xDE1A1B1F),
    onBackgroundMedium: Color(0xA61A1B1F),
    onBackgroundDisabled: Color(0x611A1B1F),
  ),
);
ThemeData _common = commonTheme(
  theme: lightColorTheme,
  brightness: Brightness.light,
);
ThemeData lightTheme = _common.copyWith(
    brightness: Brightness.light,
    appBarTheme: _common.appBarTheme.copyWith(
      backgroundColor: lightColorTheme.secondary,
      elevation: 0,
    ),
    bottomAppBarColor: lightColorTheme.secondary,
    floatingActionButtonTheme: _common.floatingActionButtonTheme.copyWith(
      backgroundColor: lightColorTheme.primary,
      foregroundColor: lightColorTheme.onPrimary,
      splashColor: lightColorTheme.primaryContainer,
      focusColor: lightColorTheme.primaryContainer,
    ));
