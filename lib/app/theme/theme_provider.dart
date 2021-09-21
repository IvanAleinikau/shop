import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';


class ThemeProvider{
  static ThemeData getTheme(){
    return ThemeData(
      textTheme: const TextTheme(
        headline1:  _TextStyle.textStyle,
        headline2: _TextStyle.appBar,
        headline3: _TextStyle.info,
      )
    );
  }
}

class _TextStyle{
  static const appBar = TextStyle(
    color: ColorPalette.textColor,
    fontFamily: 'Karla',
    fontSize: FontSize.appBarTitleFont,
  );

  static const info = TextStyle(
    fontFamily: 'Caveat',
    fontSize: FontSize.appBarTitleFont,
  );

  static const textStyle = TextStyle(
    fontFamily: 'Karla',
  );
}