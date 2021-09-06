import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/localization/app_localization.dart';

class MakeNewsForm extends StatelessWidget {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _text = TextEditingController();
  final TextEditingController _url = TextEditingController();

  final _context;

  MakeNewsForm(this._context);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalization.of(context)!.addNews),
      content: SingleChildScrollView(
        child: Column(
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
            TextField(
              controller: _url,
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
            backgroundColor: MaterialStateProperty.all(
              Colors.red,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<NewsBloc>(_context).add(
              CreateNewsEvent(
                title: _title.text.trim(),
                text: _text.text.trim(),
                url: _url.text.trim(),
              ),
            );
            _title.text = '';
            _text.text = '';
            _url.text = '';
            BlocProvider.of<NewsBloc>(_context).add(FetchNewsEvent());
            Navigator.of(context).pop();
          },
          child: Text(AppLocalization.of(context)!.add),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
