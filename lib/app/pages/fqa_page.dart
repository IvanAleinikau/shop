import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/content/content_message.dart';
import 'package:shop/app/widgets/forms_of_creation/make_question_answer.dart';
import 'package:shop/app/widgets/fqa_page/dismissible_element.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class FQAPage extends StatefulWidget {
  const FQAPage({Key? key}) : super(key: key);

  @override
  _FQAPageState createState() => _FQAPageState();
}

class _FQAPageState extends State<FQAPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FqaBloc>(
      create: (context) => FqaBloc(),
      child: BlocBuilder<FqaBloc, FqaState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorPalette.backgroundColor,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppLocalization.of(context)!.faq,
                style: ThemeProvider.getTheme().textTheme.headline2,
              ),
              backgroundColor: ColorPalette.appBarColor,
            ),
            body: Container(
              child: state.when(
                loading: () {
                  return const CircularProgressIndicator();
                },
                content: (list) {
                  return _scrollView(context, list);
                },
                contentEmpty: () {
                  return ContentMessage(
                    text: AppLocalization.of(context)!.notFqa,
                    textStyle: ThemeProvider.getTheme().textTheme.headline3,
                  );
                },
                error: () {
                  return ContentMessage(
                    text: AppLocalization.of(context)!.wrong,
                    textStyle: ThemeProvider.getTheme().textTheme.headline3,
                  );
                },
                initState: () {
                  BlocProvider.of<FqaBloc>(context)
                      .add(FqaQuestionAnswerEvent());
                },
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              backgroundColor: ColorPalette.appBarColor,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) => MakeQuestionAnswerForm(),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _scrollView(context, list) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<FqaBloc>(context).add(FqaQuestionAnswerEvent());
      },
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return DissmissibleElement(
            element: list[index],
            index: index,
          );
        },
      ),
    );
  }
}
