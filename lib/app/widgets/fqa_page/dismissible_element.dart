import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/widgets/fqa_page/dismissible_card.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/models/question_answer_model.dart';

class DissmissibleElement extends StatelessWidget {
  final QuestionAnswer element;
  final int index;

  const DissmissibleElement({
    Key? key,
    required this.element,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: const Icon(Icons.delete_forever),
      ),
      key: ValueKey<int>(element.id!.toInt()),
      onDismissed: (DismissDirection direction) {
        BlocProvider.of<FqaBloc>(context)
            .add(DeleteQuestionAnswerEvent(element.id!.toInt()));
        BlocProvider.of<FqaBloc>(context).add(FqaQuestionAnswerEvent());
      },
      child: DismissibleCard(
        index: index,
        element: element,
      ),
    );
  }
}
