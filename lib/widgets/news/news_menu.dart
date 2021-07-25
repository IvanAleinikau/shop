import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';

class NewsMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(AppLocalization.of(context)!.save),
              leading: Icon(Icons.save),
              onTap: () {

              },),
            Divider(
              height: 10.0,
              color: Colors.black12,
            ),
            ListTile(
              title: Text(AppLocalization.of(context)!.remove),
              leading: Icon(Icons.highlight_remove),
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
