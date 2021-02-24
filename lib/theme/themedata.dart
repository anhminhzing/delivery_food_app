import 'package:delivery_food_app/theme/appColor.dart';
import 'package:delivery_food_app/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DataTheme {
  static ThemeData lightTheme = ThemeData(
    textTheme: ThemeText.themetext,
    primaryTextTheme: ThemeText.primaryThemeText,
    accentTextTheme: ThemeText.accentThemeText,
    primaryColor: AppColor.orange,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    shadowColor: AppColor.neutral1,
    scaffoldBackgroundColor: AppColor.white,
    buttonColor: AppColor.orange,
    fontFamily: 'AvenirNextLTPro',
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: AppColor.orange),
      brightness: Brightness.light,
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      colorScheme: ColorScheme.light(primary: AppColor.orange),
      buttonColor: AppColor.orange,
      height: 48,
      padding: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
  );
}
