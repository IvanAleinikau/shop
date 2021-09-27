import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/widgets/forms_of_creation/make_news.dart';
import 'package:shop/app/widgets/forms_of_creation/make_vinyl_record.dart';
import 'package:shop/core/localization/app_localization.dart';

class ControlPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.appBarColor,
      ),
      body: Container(
        color: ColorPalette.backgroundColor,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20)),
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                color: ColorPalette.cardColor,
                child: ListTile(
                  title: Text(AppLocalization.of(context)!.addVinylRecord),
                  leading: const Icon(Icons.arrow_right),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return MakeVinylRecord();
                      },
                    );
                  },
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20)),
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                color: ColorPalette.cardColor,
                child: ListTile(
                  title: Text(AppLocalization.of(context)!.addNews),
                  leading: const Icon(Icons.arrow_right),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return MakeNewsForm();
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
