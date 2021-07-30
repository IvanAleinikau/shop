import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_qa.dart';
import 'package:shop/provider/db_provider.dart';
import 'package:shop/widgets/app_menu.dart';

class FQAPage extends StatefulWidget {
  @override
  _FQAPageState createState() => _FQAPageState();
}

class _FQAPageState extends State<FQAPage> {
  TextEditingController _question = TextEditingController();
  TextEditingController _answer = TextEditingController();
  late DbProvider database;

  @override
  void initState() {
    super.initState();
    this.database = DbProvider();
    this.database.initializeDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FQAPage()),);
          }, icon: Icon(Icons.replay_sharp),)
        ],
        title: Text(AppLocalization.of(context)!.faq),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<QuestionAnswer>>(
        future: this.database.retrieveQuestionAnswer(),
        builder: (BuildContext context,
            AsyncSnapshot<List<QuestionAnswer>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    direction: DismissDirection.endToStart,
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(Icons.delete_forever),
                      ),
                      key: ValueKey<int>(snapshot.data![index].id!),
                      onDismissed: (DismissDirection direction) async {
                        await this.database.deleteQuestionAnswer(snapshot.data![index].id!);
                        setState(() {
                          snapshot.data!.remove(snapshot.data![index]);
                        });
                      },
                      child: Card(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(8.0),
                          title: Text(snapshot.data![index].question),
                          subtitle: Text(snapshot.data![index].answer),
                        ),
                      ));
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      drawer: Menu(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
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
                              labelText: AppLocalization.of(context)!.question,
                              hintText:
                                  AppLocalization.of(context)!.enterQuestion,
                            ),
                          ),
                          TextField(
                            controller: _answer,
                            decoration: InputDecoration(
                              labelText: AppLocalization.of(context)!.answer,
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
                          QuestionAnswer qa = QuestionAnswer(
                              question: _question.text.trim(),
                              answer: _answer.text.trim());
                          database.insertQuestionAnswer(qa);
                          Navigator.of(context).pop();
                        },
                        child: Text(AppLocalization.of(context)!.add),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepPurpleAccent),
                        ),
                      ),
                    ],
                  ));
        },
      ),
    );
  }
}
