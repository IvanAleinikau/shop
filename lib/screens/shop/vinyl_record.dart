import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VinylRecord extends StatefulWidget {
  final String name;
  final int index;

  VinylRecord(this.name, this.index);

  @override
  _VinylRecordState createState() => _VinylRecordState();
}

class _VinylRecordState extends State<VinylRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.name}'),
      ),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('vinyl_record').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Image(
                  image: AssetImage(
                      'asset/vinyl_record/${streamSnapshot.data!.docs[widget.index]['image']}.png'),
                ),
              ),
              ListTile(
                title: Text(
                  streamSnapshot.data!.docs[widget.index]['name'] +' - '+ streamSnapshot.data!.docs[widget.index]['year'],
                  style: TextStyle(fontSize: 25),
                ),
                subtitle:
                    Text(streamSnapshot.data!.docs[widget.index]['author']),
              ),
             ListTile(
               title: Text('Description',
                 style: TextStyle(fontSize: 20),
               ),
               subtitle: Text(streamSnapshot.data!.docs[widget.index]['description']),
               trailing: Text(streamSnapshot.data!.docs[widget.index]['cost']+'\$',
               style: TextStyle(fontSize: 20),),
             )
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
