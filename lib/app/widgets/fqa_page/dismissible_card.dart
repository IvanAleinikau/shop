import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/core/models/question_answer_model.dart';

class DismissibleCard extends StatelessWidget {
  final int index;
  final QuestionAnswer element;

  const DismissibleCard({
    Key? key,
    required this.index,
    required this.element,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: ColorPalette.cardColor,
        child: ListTile(
          contentPadding: const EdgeInsets.all(8.0),
          title: Text(
            '${index + 1}. ' + element.question,
          ),
          subtitle: Text(element.answer),
        ),
      ),
    );
  }
}
