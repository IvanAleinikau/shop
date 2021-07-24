import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/model/element_vinyl_record.dart';
import 'package:shop/screens/shop/vinyl_record.dart';
import 'package:shop/widgets/shop_elements/make_vinyl_record.dart';

class VinylRecordPage extends StatefulWidget {
  @override
  _VinylRecordPageState createState() => _VinylRecordPageState();
}

class _VinylRecordPageState extends State<VinylRecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('vinyl_record').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          return GridView.count(
            crossAxisCount: 2,
            children: List.generate(streamSnapshot.data!.docs.length, (index) {
              return GestureDetector(
                onTap: () {
                  VinylRecord vinylRecord = VinylRecord(
                      streamSnapshot.data!.docs[index]['name'],
                      streamSnapshot.data!.docs[index]['author'],
                      streamSnapshot.data!.docs[index]['year'],
                      streamSnapshot.data!.docs[index]['description'],
                      streamSnapshot.data!.docs[index]['cost'],
                      streamSnapshot.data!.docs[index]['image']);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ObjVinylRecord(
                            vinylRecord, index)),
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
                        title: Text(streamSnapshot.data!.docs[index]['name']),
                        subtitle:
                            Text(streamSnapshot.data!.docs[index]['author']),
                        trailing: Text(
                            streamSnapshot.data!.docs[index]['cost'] + '\$'),
                      ),
                    ],
                  ),
                ),
              );
            }),
          );
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
    );
  }
}
