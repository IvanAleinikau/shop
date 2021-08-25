import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/widgets/app_menu.dart';

class FQAPage extends StatefulWidget {
  @override
  _FQAPageState createState() => _FQAPageState();
}

class _FQAPageState extends State<FQAPage> {
  final TextEditingController _question = TextEditingController();
  final TextEditingController _answer = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FqaBloc, FqaState>(
      builder: (context, state) {
        final FqaBloc _bloc = BlocProvider.of<FqaBloc>(context);
        _bloc.add(LoadFqa());
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FQAPage()),
                  );
                },
                icon: const Icon(Icons.replay_sharp),
              )
            ],
            centerTitle: true,
            title: Text(
              AppLocalization.of(context)!.faq,
              style: const TextStyle(fontFamily: 'Oxygen'),
            ),
            backgroundColor: Colors.black45,
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/image/image.jpg'),
                  fit: BoxFit.cover),
            ),
            child: state is FqaLoaded
                ? ListView.builder(
                    itemCount: _bloc.allQuestionAnswer.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                          direction: DismissDirection.endToStart,
                          background: Container(
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: const Icon(Icons.delete_forever),
                          ),
                          key: ValueKey<int>(
                              _bloc.allQuestionAnswer[index].id!.toInt()),
                          onDismissed: (DismissDirection direction) {
                            _bloc.add(CircleEvent());
                            _bloc.add(DeleteFqa(
                                index: _bloc.allQuestionAnswer[index].id));
                          },
                          child: Card(
                            color: Colors.transparent,
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(8.0),
                              title: Text(
                                '${index + 1}. ' +
                                    _bloc.allQuestionAnswer[index].question,
                                style: const TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                _bloc.allQuestionAnswer[index].answer,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ));
                    },
                  )
                : Container(
                    child: state is EmptyFqa
                        ? Center(
                            child: Text(
                              AppLocalization.of(context)!.notFqa,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        : const Center(
                            child: CircularProgressIndicator(
                              value: 200,
                            ),
                          )),
          ),
          drawer: const Menu(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: Colors.black45,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text(AppLocalization.of(context)!.faq),
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: _question,
                                decoration: InputDecoration(
                                  labelText:
                                      AppLocalization.of(context)!.question,
                                  hintText: AppLocalization.of(context)!
                                      .enterQuestion,
                                ),
                              ),
                              TextField(
                                controller: _answer,
                                decoration: InputDecoration(
                                  labelText:
                                      AppLocalization.of(context)!.answer,
                                  hintText:
                                      AppLocalization.of(context)!.enterAnswer,
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
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _bloc.add(CreateFqa(question: _question.text.trim(), answer: _answer.text.trim()));
                              _question.text='';
                              _answer.text='';
                              Navigator.of(context).pop();
                            },
                            child: Text(AppLocalization.of(context)!.add),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                          ),
                        ],
                      ));
            },
          ),
        );
      },
    );
  }
}
