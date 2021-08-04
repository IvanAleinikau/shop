import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/screens/maps_page.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  String? user = FirebaseAuth.instance.currentUser!.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black54,
          title: Text(
            AppLocalization.of(context)!.cart,
            style: TextStyle(fontFamily: 'Oxygen'),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Maps()),
                );
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/image/image.jpg"), fit: BoxFit.cover),
          ),
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('purchase').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return GridView.count(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                  children:
                      List.generate(streamSnapshot.data!.docs.length, (index) {
                    return streamSnapshot.data!.docs[index]['user'] == user
                        ? Container(
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
                                      trailing: Text(
                                        streamSnapshot.data!.docs[index]
                                                ['cost'] +
                                            '\$',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Container();
                  }),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ));
  }
}
