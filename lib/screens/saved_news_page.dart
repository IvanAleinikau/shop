import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_saved_news.dart';
import 'package:shop/provider/db_provider.dart';

class SavedNewsPage extends StatefulWidget {
  @override
  _SavedNewsPageState createState() => _SavedNewsPageState();
}

class _SavedNewsPageState extends State<SavedNewsPage> {
  late DbProvider database;
  String? user = FirebaseAuth.instance.currentUser!.email;

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
        title: Text(AppLocalization.of(context)!.savedNews),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<SavedNews>>(
        future: this.database.retrieveSavedNews(),
        builder:
            (BuildContext context, AsyncSnapshot<List<SavedNews>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                    return snapshot.data![index].user == user ? Dismissible(
                      direction: DismissDirection.endToStart,
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(Icons.delete_forever),
                      ),
                      key: ValueKey<int>(snapshot.data![index].id!),
                      onDismissed: (DismissDirection direction) async {
                        await this
                            .database
                            .deleteSavedNews(snapshot.data![index].id!);
                        setState(() {
                          snapshot.data!.remove(snapshot.data![index]);
                        });
                      },
                      child: Column(
                        children: [
                          Card(
                            child: ListTile(
                              contentPadding: EdgeInsets.all(8.0),
                              title: Text(snapshot.data![index].title +
                                  ' - ' +
                                  snapshot.data![index].date),
                              subtitle: Text(snapshot.data![index].text),
                            ),
                          ),
                        ],
                      ),
                    ) : Container();
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
