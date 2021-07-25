import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_news.dart';
import 'package:shop/repository/news_repository.dart';

class MakeNewsForm extends StatelessWidget {
  TextEditingController _title = TextEditingController();
  TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalization.of(context)!.addNews),
      content: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _title,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.title,
                hintText: AppLocalization.of(context)!.enterTitle,
              ),
            ),
            TextField(
              controller: _text,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.text,
                hintText: AppLocalization.of(context)!.enterText,
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
            News news = News(_title.text.trim(), _text.text.trim(), new DateTime.now());
            NewsRepository().makeNews(news).then((value) {
              if(value=="News made"){
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
