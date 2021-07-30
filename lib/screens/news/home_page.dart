import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_saved_news.dart';
import 'package:shop/provider/db_provider.dart';
import 'package:shop/widgets/news/make_news.dart';
import 'package:shop/widgets/app_menu.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? user = FirebaseAuth.instance.currentUser!.email;
  late DbProvider database;

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();
    initFirebase();
    this.database = DbProvider();
    this.database.initializeDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context)!.news),
        backgroundColor: Colors.deepPurple,
      ),
      body: Scaffold(
          body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('news').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          child: ListTile(
                            leading: Image(
                              image: AssetImage('asset/image/news.jpg'),
                            ),
                            title: Text(
                              streamSnapshot.data!.docs[index]['title'] +
                                  ' - ' +
                                  streamSnapshot.data!.docs[index]['date'],
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            subtitle: Text(
                              streamSnapshot.data!.docs[index]['text'],
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {
                                SavedNews savedNews = SavedNews(user: user.toString(), title: streamSnapshot.data!.docs[index]['title'], text: streamSnapshot.data!.docs[index]['text'], date: streamSnapshot.data!.docs[index]['date']);
                                database.insertSavedNews(savedNews);
                              },
                              icon: Icon(
                                Icons.save,
                                color: Colors.grey,
                              )),
                        )
                      ],
                    ),
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      )),
      drawer: Menu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return MakeNewsForm();
              });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
