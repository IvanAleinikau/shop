import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_purchase.dart';
import 'package:shop/model/element_vinyl_record.dart';
import 'package:shop/provider/purchase_provider.dart';
import 'package:shop/screens/shop/shopping_cart_page.dart';
import 'package:shop/widgets/shop/vinyl_record.dart';
import 'package:shop/search/search.dart';
import 'package:shop/widgets/app_menu.dart';
import 'package:shop/widgets/shop/make_vinyl_record.dart';

import '../video.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  String? user = FirebaseAuth.instance.currentUser!.email;
  final ScrollController _scrollController = ScrollController();
  final List<String> names = [];
  int count = 0;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Text(
          AppLocalization.of(context)!.shop,
          style: TextStyle(fontFamily: 'Oxygen'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: Search(names));
            },
          ),
          Badge(
            badgeColor: Colors.deepOrange,
            position: BadgePosition.topEnd(top: 3, end: 22),
            badgeContent: Text(count.toString()),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCartPage()),
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/image/image.jpg"), fit: BoxFit.cover),
        ),
        child: Scrollbar(
          controller: _scrollController,
          child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('vinyl_record')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return GridView.count(
                  childAspectRatio: 0.66,
                  crossAxisCount: 2,
                  children: List.generate(streamSnapshot.data!.size, (index) {
                    if (streamSnapshot.data!.docs.length > names.length)
                      names.add(streamSnapshot.data!.docs[index]['name']);
                    return Hero(
                        tag: 'vinyl${index.toString()}',
                        child: GestureDetector(
                          onLongPress: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VideoPlayerScreen()),
                            );
                          },
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ObjVinylRecord(
                                      streamSnapshot.data!.docs[index]['name'],
                                      index)),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Card(
                                color: Colors.transparent,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Image.network(streamSnapshot
                                          .data!.docs[index]['image']),
                                    ),
                                    ListTile(
                                      title: Text(
                                        streamSnapshot.data!.docs[index]
                                            ['name'],
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                        streamSnapshot.data!.docs[index]
                                            ['author'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    16, 0, 0, 0),
                                                child: Text(
                                                  streamSnapshot.data!
                                                          .docs[index]['cost'] +
                                                      '\$',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )),
                                          Container(
                                            height: 20,
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 2, 2),
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    count++;
                                                  });
                                                  VinylRecord vinylRecord = VinylRecord(
                                                      streamSnapshot.data!
                                                          .docs[index]['name'],
                                                      streamSnapshot
                                                              .data!.docs[index]
                                                          ['author'],
                                                      streamSnapshot.data!
                                                          .docs[index]['year'],
                                                      streamSnapshot
                                                              .data!.docs[index]
                                                          ['description'],
                                                      streamSnapshot.data!
                                                          .docs[index]['cost'],
                                                      streamSnapshot
                                                              .data!.docs[index]
                                                          ['image']);
                                                  PurchaseRepository()
                                                      .makePurchase(
                                                          new Purchase(
                                                              user!,
                                                              true,
                                                              vinylRecord))
                                                      .then((value) {
                                                    if (value ==
                                                        "Purchase made") {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              SnackBar(
                                                                  content: Text(
                                                                      value)));
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              SnackBar(
                                                                  content: Text(
                                                                      value)));
                                                    }
                                                  });
                                                },
                                                child: Text(
                                                    AppLocalization.of(context)!
                                                        .buy,
                                                    style: TextStyle(
                                                        fontFamily: 'Oxygen')),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black54),
                                                  textStyle:
                                                      MaterialStateProperty.all(
                                                    TextStyle(),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
      drawer: Menu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return MakeVinylRecord();
              });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black45,
      ),
    );
  }
}
