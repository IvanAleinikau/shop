import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VinylRecordPage extends StatefulWidget {
  const VinylRecordPage({Key? key}) : super(key: key);

  @override
  _VinylRecordPageState createState() => _VinylRecordPageState();
}

class _VinylRecordPageState extends State<VinylRecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseFirestore.instance.collection('news').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        return GridView.count(
          crossAxisCount: 2,
          children: List.generate(streamSnapshot.data!.docs.length, (index) {
            return GestureDetector(
              onTap: (){
                print('ff');
              },
              child: Card(
                child: Column(
                  children: [
                    Image.asset('asset/image/news.jpg'),
                    ListTile(
                      title: Text('Title'),
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
    ));
  }
}
