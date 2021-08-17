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
  final ScrollController _scrollController = ScrollController();
  late DbProvider database;

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();
    initFirebase();
    database = DbProvider();
    database.initializeDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalization.of(context)!.news,
          style: const TextStyle(fontFamily: 'Oxygen'),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/image/image.jpg'), fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('news').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return Scrollbar(
                    controller: _scrollController,
                    child: ListView.builder(
                        itemCount: streamSnapshot.data!.docs.length,
                        itemBuilder: (ctx, index) {
                          return Card(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        height: 100,
                                        child: Image.network(
                                            streamSnapshot.data!.docs[index]['url']),
                                      )),
                                  Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              streamSnapshot.data!.docs[index]
                                                  ['title'],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25.0,
                                              ),
                                            ),
                                            const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 2.0)),
                                            Text(
                                              streamSnapshot.data!.docs[index]
                                                  ['date'],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                            const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 2.0)),
                                            Text(
                                              streamSnapshot.data!.docs[index]
                                                  ['text'],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        SavedNews savedNews = SavedNews(
                                            user: user.toString(),
                                            title: streamSnapshot
                                                .data!.docs[index]['title'],
                                            text: streamSnapshot
                                                .data!.docs[index]['text'],
                                            date: streamSnapshot
                                                .data!.docs[index]['date']);
                                        database.insertSavedNews(savedNews);
                                      },
                                      icon: const Icon(
                                        Icons.save,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                            ),
                          );
                        }));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
      drawer: const Menu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return MakeNewsForm();
              });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black54,
      ),
    );
  }
}
