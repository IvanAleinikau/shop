import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/localization/app_localization.dart';

class Failure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.search,
              size: 50,
              color: ColorPalette.textColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppLocalization.of(context)!.noResult,
              style: ThemeProvider.getTheme().textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
