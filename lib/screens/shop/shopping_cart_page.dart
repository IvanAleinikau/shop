import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
        title: Text('Shopping cart'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('purchase').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          return GridView.count(
            crossAxisCount: 2,
            children: List.generate(streamSnapshot.data!.docs.length, (index) {
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
                            title:
                                Text(streamSnapshot.data!.docs[index]['name']),
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
        },
      ),
    );
  }
}
