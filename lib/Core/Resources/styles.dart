import 'package:flutter/material.dart';


class SizeFontManger {
  static const double s13_5 = 13.5;
  static const double s24 = 24.0;
  static const double s20 = 20.0;
  static const double s18 = 18.0;
  static const double s16 = 16.0;
  static const double s14 = 14.0;
  static const double s12 = 12.0;
  static const double s30 = 30.0;
  static const double s52 = 52.0;
}

class WeightFontManger {
  static const FontWeight w400 = FontWeight.w400;
  static const FontWeight w500 = FontWeight.w500;
  static const FontWeight w600 = FontWeight.w600;
  static const FontWeight w700 = FontWeight.w700;
  static const FontWeight wB = FontWeight.bold;
}

class FamilyFontManger {
  static const String familyAll = 'Inter';
  static const String familyApp = 'PilotExtended';
}

TextStyle _getTextStyle(
    double size, FontWeight weight, Color color, String family) {
  return TextStyle(
      fontSize: size,
      fontFamily: family,
      color: color,
      fontWeight: weight,
      overflow: TextOverflow.ellipsis);
}

// for title text
TextStyle getBigTitleSplash(color) => _getTextStyle(
    SizeFontManger.s52, WeightFontManger.wB, color, FamilyFontManger.familyApp);

//---------------------------------
TextStyle getTextMedium(color) => _getTextStyle(
    SizeFontManger.s20,
    WeightFontManger.w400,
    color,
    FamilyFontManger.familyAll);
//---------------------------------
TextStyle getTextSmall(color) => _getTextStyle(
    SizeFontManger.s16,
    WeightFontManger.wB,
    color,
    FamilyFontManger.familyAll);
//---------------------------------
TextStyle getTextLarge(color) => _getTextStyle(
    SizeFontManger.s24,
    WeightFontManger.wB,
    color,
    FamilyFontManger.familyAll);
//-------------------------------
TextStyle getTextLabelLarge(color) => _getTextStyle(
    SizeFontManger.s30,
    WeightFontManger.wB,
    color,
    FamilyFontManger.familyAll);
//---------------------------------






