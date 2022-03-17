// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color darkText;
  Color pageBackground;
  Color grayIcon;
  Color lightText;
  Color darkLines;
  Color lightLines;

  TextStyle get title1 => TextStyle(
        fontFamily: 'Winlove',
        color: darkText,
        fontWeight: FontWeight.w500,
        fontSize: 32,
      );
  TextStyle get title2 => TextStyle(
        fontFamily: 'Winlove',
        color: darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Dancing Script',
        color: darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Cormorant Garamond',
        color: darkText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Cormorant Garamond',
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Cormorant Garamond',
        color: darkLines,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Dancing Script',
        color: grayIcon,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF689689);
  Color secondaryColor = const Color(0xFF50756B);
  Color tertiaryColor = const Color(0xFF14181B);
  Color alternate = const Color(0x00000000);
  Color primaryBackground = const Color(0x00000000);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0x00000000);
  Color secondaryText = const Color(0x00000000);

  Color darkText = Color(0xFF14181B);
  Color pageBackground = Color(0xFFF1F4F8);
  Color grayIcon = Color(0xFF95A1AC);
  Color lightText = Color(0xFFFFFFFF);
  Color darkLines = Color(0xFF262D34);
  Color lightLines = Color(0xFFDEE2E7);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
