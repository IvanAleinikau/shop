import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_saved_news.dart';
import 'package:shop/provider/db_provider.dart';
import 'package:shop/widgets/app_menu.dart';

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
    database = DbProvider();
    database.initializeDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalization.of(context)!.savedNews,
          style: const TextStyle(fontFamily: 'Oxygen'),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/image/image.jpg'), fit: BoxFit.cover),
        ),
        child: FutureBuilder<List<SavedNews>>(
          future: database.retrieveSavedNews(),
          builder:
              (BuildContext context, AsyncSnapshot<List<SavedNews>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return snapshot.data![index].user == user
                        ? Dismissible(
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
                                  .deleteSavedNews(snapshot.data![index].id!);
                              setState(() {
                                snapshot.data!.remove(snapshot.data![index]);
                              });
                            },
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.all(8.0),
                                    title: Text(
                                      snapshot.data![index].title +
                                          ' - ' +
                                          snapshot.data![index].date,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text(
                                      snapshot.data![index].text,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container();
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      drawer: const Menu(),
    );
  }
}
