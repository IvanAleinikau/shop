import 'package:flutter/material.dart';
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
      title: Text('Add vinyl record'),
      content: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _name,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter name',
              ),
            ),
            TextField(
              controller: _author,
              decoration: InputDecoration(
                labelText: 'Author',
                hintText: 'Enter author',
              ),
            ),
            TextField(
              controller: _year,
              decoration: InputDecoration(
                labelText: 'Year',
                hintText: 'Enter Year',
              ),
            ),
            TextField(
              controller: _description,
              decoration: InputDecoration(
                labelText: 'Description',
                hintText: 'Enter description',
              ),
            ),
            TextField(
              controller: _cost,
              decoration: InputDecoration(
                labelText: 'Cost',
                hintText: 'Enter cost',
              ),
            ),
            TextField(
              controller: _image,
              decoration: InputDecoration(
                labelText: 'Image',
                hintText: 'Enter image',
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
          child: Text('Cancel'),
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
          child: Text('Add'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
          ),
        ),
      ],
    );
  }
}
