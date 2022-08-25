import 'package:flutter/material.dart';

class FluuiStyle {
  // 基础色
  static Color masterColor = const Color(0xFF626262);

  /// Colors
  /// Success Color
  static Color successLighterColor = const Color(0xFFCFF5F2);
  static Color successLightColor = const Color(0xFF40D9CA);
  static Color successColor = const Color(0xFF10CFBD);
  static Color successDarkColor = const Color(0xFF0DA697);
  static Color successDarkerColor = const Color(0xFF0A7C71);

  /// Complate Color
  static Color completeLighterColor = const Color(0xFFDAEFFD);
  static Color completeLightColor = const Color(0xFF6DC0F9);
  static Color completeColor = const Color(0xFF48B0F7);
  static Color completeDarkColor = const Color(0xFF3A8DC6);
  static Color completeDarkerColor = const Color(0xFF2B6A94);

  /// Promary Color
  static Color primaryLighterColor = const Color(0xFFE2DEEF);
  static Color primaryLightColor = const Color(0xFF8A7DBE);
  static Color primaryColor = const Color(0xFF6D5CEA);
  static Color primaryDarkColor = const Color(0xFF574ABb);
  static Color primaryDarkerColor = const Color(0xFF413768);

  /// Warning Color
  static Color warningLighterColor = const Color(0xFFFEF6DD);
  static Color warningLightColor = const Color(0xFFF9D975);
  static Color warningColor = const Color(0xFFF8D053);
  static Color warningDarkColor = const Color(0xFFC6A642);
  static Color warningDarkerColor = const Color(0xFF957D32);

  /// Danger Color
  static Color dangerLighterColor = const Color(0xFFFDDDDD);
  static Color dangerLightColor = const Color(0xFFF77975);
  static Color dangerColor = const Color(0xFFF55753);
  static Color dangerDarkColor = const Color(0xFFC44642);
  static Color dangerDarkerColor = const Color(0xFF933432);

  /// Info Color
  static Color infoLighterColor = const Color(0xFFD8DADC);
  static Color infoLightColor = const Color(0xFF626C75);
  static Color infoColor = const Color(0xFF3B4752);
  static Color infoDarkColor = const Color(0xFF2F3942);
  static Color infoDarkerColor = const Color(0xFF232B31);

  /// Font Size
  static double fontSizeBase = 14;
  static double fontSizeLg = fontSizeBase * 1.25;
  static double fontSizeSm = fontSizeBase * 0.85;
  static double fontSizeXs = fontSizeBase * 0.7;
  static double fontSizeH1 = fontSizeBase * 2.6;
  static double fontSizeH2 = fontSizeBase * 2.15;
  static double fontSizeH4 = fontSizeBase * 1.25;
  static double fontSizeH5 = fontSizeBase;
  static double fontSizeH6 = fontSizeBase * 0.85;

  /// 圆角
  static BorderRadius borderRadiusBase = BorderRadius.circular(4);
  static BorderRadius borderRadiusLarge = BorderRadius.circular(6);
  static BorderRadius borderRadiusSmall = BorderRadius.circular(3);

  // Padding
  static double paddingBaseVertical = 6;
  static double paddingBaseHorizontal = 10;
  static double paddingLgVertical = 10;
  static double paddingLgHorizontal = 16;
  static double paddingSmVertical = 4;
  static double paddingSmHorizontal = 7;
  static double paddingXsVertical = 2;
  static double paddingXsHorizontal = 4;

  // Size
  static double sizeBase = paddingBaseVertical * 2 + fontSizeBase * 2 + 2;
  static double sizeLg = paddingLgVertical * 2 + fontSizeLg * 2 + 2;
  static double sizeSm = paddingSmVertical * 2 + fontSizeSm * 2 + 2;
  static double sizeXs = paddingXsVertical * 2 + fontSizeXs * 2 + 2;

  // Padding
  static EdgeInsets paddingBase = EdgeInsets.fromLTRB(paddingBaseHorizontal,
      paddingBaseVertical, paddingBaseHorizontal, paddingBaseVertical);
  static EdgeInsets paddingLg = EdgeInsets.fromLTRB(paddingLgHorizontal,
      paddingLgVertical, paddingLgHorizontal, paddingLgVertical);
  static EdgeInsets paddingSm = EdgeInsets.fromLTRB(paddingSmHorizontal,
      paddingSmVertical, paddingSmHorizontal, paddingSmVertical);
  static EdgeInsets paddingXs = EdgeInsets.fromLTRB(paddingXsHorizontal,
      paddingXsVertical, paddingXsHorizontal, paddingXsVertical);
}
