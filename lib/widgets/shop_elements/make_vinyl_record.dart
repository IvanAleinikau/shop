import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_vinyl_record.dart';
import 'package:shop/repository/vinyl_record_repository.dart';

class MakeVinylRecord extends StatefulWidget {

  @override
  _MakeVinylRecordState createState() => _MakeVinylRecordState();
}

class _MakeVinylRecordState extends State<MakeVinylRecord> {
  TextEditingController _name = TextEditingController();
  TextEditingController _author = TextEditingController();
  TextEditingController _year = TextEditingController();
  TextEditingController _description = TextEditingController();
  TextEditingController _cost = TextEditingController();
  TextEditingController _image = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalization.of(context)!.addVinylRecord),
      content: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _name,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.name,
                hintText: AppLocalization.of(context)!.enterName,
              ),
            ),
            TextField(
              controller: _author,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.author,
                hintText: AppLocalization.of(context)!.enterAuthor,
              ),
            ),
            TextField(
              controller: _year,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.year,
                hintText: AppLocalization.of(context)!.enterYear,
              ),
            ),
            TextField(
              controller: _description,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.description,
                hintText: AppLocalization.of(context)!.enterDescription,
              ),
            ),
            TextField(
              controller: _cost,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.cost,
                hintText: AppLocalization.of(context)!.enterCost,
              ),
            ),
            TextField(
              controller: _image,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.imageNumber,
                hintText: AppLocalization.of(context)!.enterImage,
              ),
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(AppLocalization.of(context)!.cancel),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            VinylRecord vinylRecord = VinylRecord(_name.text.trim(), _author.text.trim(),_year.text.trim(),_description.text.trim(),_cost.text.trim(),_image.text.trim() );
            VinylRecordRepository().makeVinylRecord(vinylRecord).then((value) {
              if(value=="Vinyl record made"){
                Navigator.of(context).pop();
              }else{
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(value)));
              }
            });
          },
          child: Text(AppLocalization.of(context)!.add),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
          ),
        ),
      ],
    );
  }
}
