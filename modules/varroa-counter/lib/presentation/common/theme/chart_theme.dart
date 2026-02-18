import 'package:flutter/material.dart';
import '../theme/waggle_dance.dart';

class ChartTheme {
  final BuildContext context;
  ChartTheme._(this.context);
  static ChartTheme of(BuildContext context) => ChartTheme._(context);
  Paint get background => Paint()..color = Theme.of(context).cardColor;
  MarkTheme get mark => MarkTheme(context);
  AxisTheme get axis => AxisTheme(context);
  ValueTheme get value => ValueTheme(context);
  ColourTheme get colours => ColourTheme(context);
}

class MarkTheme {
  final BuildContext context;
  MarkTheme(this.context);

  Paint get line => Paint()
    ..color = Theme.of(context).colorScheme.primary
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0;
  Paint get rangeBox => Paint()
    ..color = Theme.of(context).waggle().primaryContainer.withOpacity(0.6)
    ..style = PaintingStyle.fill
    ..strokeWidth = 0;
  Paint get bar => Paint()
    ..color = Theme.of(context).colorScheme.primary
    ..style = PaintingStyle.fill
    ..strokeWidth = 0;
  Paint get barError => Paint()
    ..color = Theme.of(context).colorScheme.error
    ..style = PaintingStyle.fill
    ..strokeWidth = 0;

  Paint get barDisabled => Paint()
    ..color = Theme.of(context).colorScheme.onSurface.withOpacity(0.38)
    ..style = PaintingStyle.fill
    ..strokeWidth = 0;
  TextStyle get tooltip =>
      Theme.of(context).textTheme.bodyText1 ?? const TextStyle();
}

class AxisTheme {
  final BuildContext context;
  AxisTheme(this.context);

  Paint get axisLine => Paint()
    ..color = Theme.of(context).colorScheme.onSurface.withOpacity(0.6)
    ..strokeWidth = 1.0
    ..style = PaintingStyle.stroke;
  Paint get tickLine => Paint()
    ..color = Theme.of(context).colorScheme.onSurface.withOpacity(0.6)
    ..strokeWidth = 1.0
    ..style = PaintingStyle.stroke;
  Paint get gridLine => Paint()
    ..color = Theme.of(context).colorScheme.onSurface.withOpacity(0.38)
    ..strokeWidth = 1.0
    ..style = PaintingStyle.stroke;
  Paint get block => Paint()
    ..color = Theme.of(context).waggle().primaryContainer.withOpacity(0.37)
    ..style = PaintingStyle.fill;
  TextStyle get labelStyle =>
      Theme.of(context).textTheme.caption ?? const TextStyle();
}

class ValueTheme {
  final BuildContext context;
  ValueTheme(this.context);

  TextStyle get large =>
      Theme.of(context).textTheme.headline3 ?? const TextStyle();
  TextStyle get medium =>
      Theme.of(context).textTheme.headline5 ?? const TextStyle();
  TextStyle get small =>
      Theme.of(context).textTheme.subtitle1 ?? const TextStyle();
}

class ColourTheme {
  final BuildContext context;
  ColourTheme(this.context);

  Color get primary => Theme.of(context).colorScheme.primary;
  Color get secondary => Theme.of(context).colorScheme.secondary;

  List<Color> get category => [
        category10,
        category20,
        category30,
        category40,
        category50,
        category60,
      ];
  List<Color> get sequence => [
        hueScale10,
        hueScale20,
        hueScale30,
        hueScale40,
        hueScale50,
        hueScale60,
      ];
  List<Color> get divergent => [
        divergent20,
        divergent30,
        divergent40,
        divergent50,
        divergent60,
        divergent70,
        divergent80,
      ];
}

const Color category10 = Color(0xff00C0C7);
const Color category20 = Color(0xff5144D3);
const Color category30 = Color(0xffE8871A);
const Color category40 = Color(0xffDA3490);
const Color category50 = Color(0xff9089FA);
const Color category60 = Color(0xff47E26F);

const Color hueScale10 = Color(0xff2e5da8);
const Color hueScale20 = Color(0xff5679ba);
const Color hueScale30 = Color(0xff7997cc);
const Color hueScale40 = Color(0xff9db5dd);
const Color hueScale50 = Color(0xffc2d3ee);
const Color hueScale60 = Color(0xffe9f2ff);

const Color divergent20 = Color(0xff488f31);
const Color divergent30 = Color(0xff83af70);
const Color divergent40 = Color(0xffbad0af);
const Color divergent50 = Color(0xfff1f1f1);
const Color divergent60 = Color(0xfff0b8b8);
const Color divergent70 = Color(0xffe67f83);
const Color divergent80 = Color(0xffd43d51);
