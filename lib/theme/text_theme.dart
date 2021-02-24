import 'package:delivery_food_app/theme/appColor.dart';
import 'package:delivery_food_app/theme/text_style.dart';
import 'package:flutter/material.dart';

class ThemeText {
  static TextTheme themetext = TextTheme(
    headline1: StyleText.h1,
    headline2: StyleText.h2,
    headline3: StyleText.h3,
    headline4: StyleText.h4,
    headline5: StyleText.h5,
    bodyText1: StyleText.body1,
    bodyText2: StyleText.body2,
    caption: StyleText.caption,
  ).apply(
    displayColor: AppColor.neutral1,
    bodyColor: AppColor.neutral1,
  );

  static TextTheme primaryThemeText = themetext.apply(
    displayColor: AppColor.orange,
    bodyColor: AppColor.orange,
  );

  static TextTheme buttonThemeText = themetext.apply(
    displayColor: AppColor.white,
    bodyColor: AppColor.white,
  );
}
