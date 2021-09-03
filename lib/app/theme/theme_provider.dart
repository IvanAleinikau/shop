import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';


class ThemeProvider{
  static ThemeData getTheme(){
    return ThemeData(
      textTheme: const TextTheme(
        headline1: _TextStyle.headline1,
        headline2: _TextStyle.headline2,
        headline3: _TextStyle.headline3,
        headline4: _TextStyle.headline4,
        headline5: _TextStyle.headline5,
        headline6: _TextStyle.headline6,
      )
    );
  }
}

class _TextStyle{
  static const headline1 = TextStyle(
    color: ColorPalette.whiteColor,
    fontFamily: 'Oxygen' ,
    fontSize: 17,
  );

  static const headline2 = TextStyle(
    color: ColorPalette.whiteColor,
    fontFamily: 'Oxygen',
  );

  static const headline3 = TextStyle(
    color: ColorPalette.whiteColor,
  );

  static const headline4 = TextStyle(
    color: ColorPalette.whiteColor,
    fontSize: 25,
  );

  static const headline5 = TextStyle(
    color: ColorPalette.whiteColor,
    fontSize: 20,
  );

  static const headline6 = TextStyle(
    fontFamily: 'Oxygen' ,
  );
}