import 'package:flutter/material.dart';

class TAppColors {
  TAppColors._();

  static const tPrimary = Color(0xFFffcb66);
  static const tSecondary = Color(0xFFb3e0b8);
  static const tWhite = Color(0xFFFFFFFF);
  static const tBackground = Color(0xFFFAFAFA);
  static const tGrey = Colors.grey;
  static const tPurple = Color(0xFFeeb8e3);
  static const tBlue = Color(0xFFb6c9ed);
  static const tTransparent = Colors.transparent;
  static const tBlack = Colors.black;

  // colors for shimmer
  static const tGreyColorShade300 = Color(0xFFE0E0E0);
  static const tGreyColorShade100 = Color(0xFFf5f5f5);

  static List<BoxShadow> tShadowList = [
    BoxShadow(
        color: Colors.grey[100]!, blurRadius: 30, offset: const Offset(0, 10)),
  ];

  static const MaterialColor tPrimarySwatch =
      MaterialColor(0xFFffcb66, <int, Color>{
    50: Color(0x1Affcb66),
    100: Color(0x33ffcb66),
    200: Color(0x4Dffcb66),
    300: Color(0x66ffcb66),
    400: Color(0x80ffcb66),
    500: Color(0xFFffcb66),
    600: Color(0x99ffcb66),
    700: Color(0x83ffcb66),
    800: Color(0xCCffcb66),
    900: Color(0xE6ffcb66),
  });
}
