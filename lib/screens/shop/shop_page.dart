import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/screens/shop/shopping_cart_page.dart';
import 'package:shop/widgets/shop/vinyl_record.dart';
import 'package:shop/search/search.dart';
import 'package:shop/widgets/app_menu.dart';
import 'package:shop/widgets/shop/make_vinyl_record.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalization.of(context)!.shop),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Search(names));
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCartPage()),
                );
              },
            ),
          ],
        ),
        body: Scaffold(
          body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('vinyl_record')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return GridView.count(
                  crossAxisCount: 2,
                  children:
                      List.generate(streamSnapshot.data!.docs.length, (index) {
                    if (streamSnapshot.data!.docs.length > names.length)
                      names.add(streamSnapshot.data!.docs[index]['name']);
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ObjVinylRecord(
                                  streamSnapshot.data!.docs[index]['name'])),
                        );
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Flexible(
                              child: Image(
                                image: AssetImage(
                                    "asset/vinyl_record/${streamSnapshot.data!.docs[index]['image']}.png"),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                  streamSnapshot.data!.docs[index]['name']),
                              subtitle: Text(
                                  streamSnapshot.data!.docs[index]['author']),
                              trailing: Text(streamSnapshot.data!.docs[index]
                                      ['cost'] +
                                  '\$'),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MakeVinylRecord();
                  });
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.deepPurple,
          ),
        ),
        drawer: Menu(),
      ),
    );
  }
}
