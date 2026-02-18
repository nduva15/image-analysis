import 'package:flutter/material.dart';

import 'waggle_dance.dart';

ThemeData commonTheme({
  required XTheme theme,
  required Brightness brightness,
}) =>
    ThemeData(
      fontFamily: "Nunito",
      textTheme: TextTheme(
        headline1: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.w300,
        ),
        headline2: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.w300,
        ),
        headline3: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.normal,
        ),
        headline4: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.normal,
        ),
        headline5: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.normal,
        ),
        headline6: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.normal,
        ),
        subtitle2: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
            color: theme.onSurface.onSurfaceHigh,
            fontWeight: FontWeight.normal,
            fontSize: 16,
            height: 1.35),
        bodyText2: TextStyle(
            color: theme.onSurface.onSurfaceHigh,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            height: 1.35),
        button: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.bold,
        ),
        caption: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.normal,
        ),
        overline: TextStyle(
          color: theme.onSurface.onSurfaceHigh,
          fontWeight: FontWeight.normal,
        ),
      ),
      iconTheme: IconThemeData(color: theme.onSurface.onSurface),
      colorScheme: ColorScheme(
        primary: theme.primary,
        secondary: theme.secondary,
        surface: theme.surface.surface,
        background: theme.surface.surface,
        error: theme.error,
        onPrimary: theme.onPrimary,
        onSecondary: theme.onSecondary,
        onSurface: theme.onSurface.onSurface,
        onBackground: theme.onBackground.onBackground,
        onError: theme.onError,
        brightness: brightness,
      ),
      primaryColor: theme.primary,
      primaryColorLight: theme.primaryContainer,
      // primaryColorDark: Color( 0xff1976d2 ),
      applyElevationOverlayColor: false,
      canvasColor: theme.surface.surface,
      scaffoldBackgroundColor: theme.background,
      bottomAppBarColor: theme.surface.surface4,
      cardColor: theme.surface.surface1,
      dividerColor: theme.outline,
      highlightColor: theme.surface.surface3,
      // splashColor: Color( 0x66c8c8c8 ),
      // selectedRowColor: Color( 0xfff5f5f5 ),
      // unselectedWidgetColor: Color( 0x8a000000 ),
      disabledColor: theme.onSurface.onSurfaceDisabled,
      // toggleableActiveColor: ( 0xff1e88e5 ),
      // secondaryHeaderColor: Color( 0xffe3f2fd ),
      backgroundColor: theme.background,
      dialogBackgroundColor: theme.surface.surface5,
      // indicatorColor: Color( 0xff2196f3 ),
      hintColor: theme.onSurface.onSurfaceMedium,
      errorColor: theme.error,
      // Nav Bars
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: theme.surface.surface2,
        shadowColor: theme.surface.surface,
        foregroundColor: theme.onSurface.onSurface,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: theme.primary,
        showUnselectedLabels: false,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: theme.surface.surface5,
      ),

      // Menus
      popupMenuTheme: PopupMenuThemeData(
        color: theme.surface.surface5,
      ),

      // Inputs
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 1.5,
        )),
        fillColor: theme.surface.surface3,
        filled: true,
      ),
      switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(theme.primaryContainer),
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return theme.onPrimaryContainer;
            }
            if (states.contains(MaterialState.selected)) {
              return theme.primary;
            } else {
              return theme.primaryContainer;
            }
          })),
      // UI
      dividerTheme: const DividerThemeData(
        thickness: 1.5,
        indent: 8,
        endIndent: 8,
      ),

      // Buttons
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: theme.surface.surface2,
          minimumSize: const Size(96, 44),
          side: BorderSide(
            width: 1.5,
            color: theme.primary,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(96, 44),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(theme.primary),
        checkColor: MaterialStateProperty.all(theme.onPrimary),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: theme.surface.surfaceVariant,
        contentTextStyle: TextStyle(
          color: theme.onSurface.onSurfaceVariant,
          fontSize: 16,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      // Table
      dataTableTheme: const DataTableThemeData(
        dataRowHeight: 36,
      ),
      chipTheme: ChipThemeData(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          backgroundColor: theme.surface.surface1,
          disabledColor: theme.onSurface.onSurfaceDisabled,
          selectedColor: theme.onSurface.onSurface,
          secondarySelectedColor: theme.onSurface.onSurface,
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
          labelStyle: TextStyle(
              color: theme.onSurface.onSurfaceHigh,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              height: 1),
          secondaryLabelStyle: TextStyle(
            color: theme.onSurface.onSurfaceHigh,
            fontWeight: FontWeight.normal,
          ),
          brightness: brightness,
          side: BorderSide(
            width: 1,
            color: theme.outline,
          )),
      cardTheme: CardTheme(
        color: theme.surface.surface1,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
