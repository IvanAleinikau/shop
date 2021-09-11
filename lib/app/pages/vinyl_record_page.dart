import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class ObjVinylRecord extends StatefulWidget {
  final VinylRecord vinylRecord;

  const ObjVinylRecord(this.vinylRecord);

  @override
  _ObjVinylRecordState createState() => _ObjVinylRecordState();
}

class _ObjVinylRecordState extends State<ObjVinylRecord> {
  String? user = FirebaseAuth.instance.currentUser!.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        title: Text(widget.vinylRecord.name),
      ),
      body: Container(
        color: ColorPalette.backgroundColor,
        child: Hero(
          tag:widget.vinylRecord.name,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network(
                    widget.vinylRecord.image,
                  ),
                ),
                /*ListTile(
                  title: Text(
                    widget.vinylRecord.name + ' - ' + widget.vinylRecord.year,
                    textAlign: TextAlign.center,
                    style: ThemeProvider.getTheme().textTheme.headline4,
                  ),
                  subtitle: Text(
                    widget.vinylRecord.author,
                    textAlign: TextAlign.center,
                    style: ThemeProvider.getTheme().textTheme.headline5,
                  ),
                ),*/
                /*ListTile(
                  title: Text(
                    AppLocalization.of(context)!.description,
                    style: ThemeProvider.getTheme().textTheme.headline5,
                  ),
                  subtitle: Text(
                    widget.vinylRecord.description,
                    style: ThemeProvider.getTheme().textTheme.headline3,
                  ),
                  trailing: Text(
                    widget.vinylRecord.cost + '\$',
                    style: ThemeProvider.getTheme().textTheme.headline5,
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
