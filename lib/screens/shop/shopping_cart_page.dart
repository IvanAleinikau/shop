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
        title: Text(AppLocalization.of(context)!.cart),
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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('purchase').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return GridView.count(
              crossAxisCount: 2,
              children:
                  List.generate(streamSnapshot.data!.docs.length, (index) {
                return streamSnapshot.data!.docs[index]['user'] == user
                    ? Card(
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
                      )
                    : Container();
              }),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}