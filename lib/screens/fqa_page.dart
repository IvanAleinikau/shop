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
  final TextEditingController _question = TextEditingController();
  final TextEditingController _answer = TextEditingController();
  late DbProvider database;

  @override
  void initState() {
    super.initState();
    database = DbProvider();
    database.initializeDB();
  }

  @override
  Widget build(BuildContext context) {
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
              image: AssetImage('asset/image/image.jpg'), fit: BoxFit.cover),
        ),
        child: FutureBuilder<List<QuestionAnswer>>(
          future: database.retrieveQuestionAnswer(),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: const Icon(Icons.delete_forever),
                        ),
                        key: ValueKey<int>(snapshot.data![index].id!),
                        onDismissed: (DismissDirection direction) async {
                          await database
                              .deleteQuestionAnswer(snapshot.data![index].id!);
                          setState(() {
                            snapshot.data!.remove(snapshot.data![index]);
                          });
                        },
                        child: Card(
                          color: Colors.transparent,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(8.0),
                            title: Text('${index+1}. '+ snapshot.data![index].question,style: const TextStyle(color: Colors.white),),
                            subtitle: Text(snapshot.data![index].answer,style: const TextStyle(color: Colors.white),),
                          ),
                        ));
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
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
                          if (qa.question.length > 5 && qa.answer.length > 5) {
                            database.insertQuestionAnswer(qa);
                            Navigator.of(context).pop();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text(AppLocalization.of(context)!.field)));
                          }
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
  }
}
