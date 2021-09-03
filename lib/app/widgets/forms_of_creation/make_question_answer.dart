import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/localization/app_localization.dart';

class MakeQuestionAnswerForm extends StatelessWidget {
  final TextEditingController _question = TextEditingController();
  final TextEditingController _answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalization.of(context)!.faq),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _question,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.question,
                hintText: AppLocalization.of(context)!.enterQuestion,
              ),
            ),
            TextField(
              controller: _answer,
              decoration: InputDecoration(
                labelText: AppLocalization.of(context)!.answer,
                hintText: AppLocalization.of(context)!.enterAnswer,
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
            BlocProvider.of<FqaBloc>(context).add(CreateQuestionAnswerEvent(_question.text.trim(), _answer.text.trim()));
            BlocProvider.of<FqaBloc>(context).add(FqaQuestionAnswerEvent());
            _question.text = '';
            _answer.text = '';
            Navigator.of(context).pop();
          },
          child: Text(AppLocalization.of(context)!.add),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
      ],
    );
  }
}
