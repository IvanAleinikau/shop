import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/app_menu.dart';
import 'package:shop/app/widgets/forms_of_creation/make_question_answer.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_state.dart';
import 'package:shop/core/localization/app_localization.dart';


class FQAPage extends StatefulWidget {
  @override
  _FQAPageState createState() => _FQAPageState();
}

class _FQAPageState extends State<FQAPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FqaBloc, FqaState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              AppLocalization.of(context)!.faq,
              style: ThemeProvider.getTheme().textTheme.headline2,
            ),
            backgroundColor: ColorPalette.primaryColor,
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/image/image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: state.when(
              loading: () {
                return const CircularProgressIndicator();
              },
              content: (list) {
                return _scrollView(context, list);
              },
              contentEmpty: () {
                return Center(
                  child: Text(
                    AppLocalization.of(context)!.notFqa,
                    style: ThemeProvider.getTheme().textTheme.headline2,
                  ),
                );
              },
              error: () {
                return Center(
                  child: Text(
                    AppLocalization.of(context)!.wrong,
                    style: ThemeProvider.getTheme().textTheme.headline2,
                  ),
                );
              },
              initState: () {
                BlocProvider.of<FqaBloc>(context).add(FqaQuestionAnswerEvent());
              },
            ),
          ),
          drawer: const Menu(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: ColorPalette.primaryColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => MakeQuestionAnswerForm(),
              );
            },
          ),
        );
      },
    );
  }

  _scrollView(context, list) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<FqaBloc>(context).add(FqaQuestionAnswerEvent());
      },
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Icon(Icons.delete_forever),
            ),
            key: ValueKey<int>(list[index].id!.toInt()),
            onDismissed: (DismissDirection direction) {
              BlocProvider.of<FqaBloc>(context).add(DeleteQuestionAnswerEvent(list[index].id!.toInt()));
              BlocProvider.of<FqaBloc>(context).add(FqaQuestionAnswerEvent());
            },
            child: Card(
              color: Colors.transparent,
              child: ListTile(
                contentPadding: const EdgeInsets.all(8.0),
                title: Text(
                  '${index + 1}. ' + list[index].question,
                  style: ThemeProvider.getTheme().textTheme.headline2,
                ),
                subtitle: Text(
                  list[index].answer,
                  style: ThemeProvider.getTheme().textTheme.headline2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
