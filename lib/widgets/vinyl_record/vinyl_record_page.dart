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
      stream: FirebaseFirestore.instance.collection('vinyl_record').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        return GridView.count(
          crossAxisCount: 2,
          children: List.generate(streamSnapshot.data!.docs.length, (index) {
            return GestureDetector(
              onTap: (){

              },
              child: Card(
                child: Column(
                  children: [
                    Flexible(
                      child:Image(
                        image: AssetImage("asset/vinyl_record/${streamSnapshot.data!.docs[index]['image']}.png"),
                      ),
                    ),
                    ListTile(
                      title: Text(streamSnapshot.data!.docs[index]['name']),
                      subtitle: Text(streamSnapshot.data!.docs[index]['author']),
                      trailing: Text(streamSnapshot.data!.docs[index]['cost']+'\$') ,
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
