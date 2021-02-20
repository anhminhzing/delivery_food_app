import 'package:delivery_food_app/theme/appColor.dart';
import 'package:delivery_food_app/theme/texttheme.dart';
import 'package:flutter/material.dart';

class DataTheme {
  static ThemeData lightTheme = ThemeData(
    textTheme: ThemeText.themetext,
    primaryColor: AppColor.orange,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    shadowColor: AppColor.neutral1,
    scaffoldBackgroundColor: AppColor.white,
    buttonColor: AppColor.orange,
    fontFamily: 'AvenirNextLTPro',
    buttonTheme: ButtonThemeData(
      height: 46,
      buttonColor: AppColor.orange,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
