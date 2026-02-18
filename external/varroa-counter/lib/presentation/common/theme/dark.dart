import 'package:flutter/material.dart';

import 'common.dart';
import 'waggle_dance.dart';

const XTheme darkColorTheme = XTheme(
  primary: Color(0xffAAC7FF),
  onPrimary: Color(0xff002E68),
  primaryContainer: Color(0xff07458E),
  onPrimaryContainer: Color(0xffD6E2FF),
  secondary: Color(0xffE9C400),
  onSecondary: Color(0xff4A3F02),
  secondaryContainer: Color(0xff675805),
  onSecondaryContainer: Color(0xffFFFADE),
  error: Color(0xffFFB4A9),
  onError: Color(0xff680003),
  errorContainer: Color(0xff930006),
  onErrorContainer: Color(0xffFFDAD4),
  background: Color(0xff1A1B1F),
  outline: Color(0xffA9ABB4),
  surface: SurfaceTheme(
    surface: Color(0xff1A1B1F),
    surfaceVariant: Color(0xffFDFBFF),
    surface1: Color(0xff21242A),
    surface2: Color(0xff262931),
    surface3: Color(0xff2A2E38),
    surface4: Color(0xff2B303A),
    surface5: Color(0xff2E333E),
  ),
  onSurface: OnSurfaceTheme(
    onSurface: Color(0xffC7C6CA),
    onSurfaceVariant: Color(0xff1A1B1F),
    onSurfaceHigh: Color(0xDEC7C6CA),
    onSurfaceMedium: Color(0xA6C7C6CA),
    onSurfaceDisabled: Color(0x61C7C6CA),
  ),
  onBackground: OnBackgroundTheme(
      onBackground: Color(0xffE4E2E6),
      onBackgroundHigh: Color(0xDEE4E2E6),
      onBackgroundMedium: Color(0xA6E4E2E6),
      onBackgroundDisabled: Color(0x61E4E2E6)),
);

ThemeData _common = commonTheme(
  theme: darkColorTheme,
  brightness: Brightness.dark,
);
ThemeData darkTheme = _common.copyWith(
  //Navigation
  appBarTheme: _common.appBarTheme.copyWith(elevation: 0),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0,
  ),
// Menus
  popupMenuTheme: _common.popupMenuTheme.copyWith(elevation: 0),
  snackBarTheme: _common.snackBarTheme.copyWith(elevation: 0),
  // Text
);
