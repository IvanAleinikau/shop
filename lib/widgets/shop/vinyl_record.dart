import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ObjVinylRecord extends StatefulWidget {
  final String name;
  final int count;

  ObjVinylRecord(this.name, this.count);

  @override
  _ObjVinylRecordState createState() => _ObjVinylRecordState();
}

class _ObjVinylRecordState extends State<ObjVinylRecord> {
  String? user = FirebaseAuth.instance.currentUser!.email;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text('${widget.name}'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/image/image.jpg"), fit: BoxFit.cover),
          ),
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('vinyl_record')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  return ListView.builder(
                      itemCount: streamSnapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return widget.name ==
                                streamSnapshot.data!.docs[index]['name']
                            ? Hero(
                                tag: 'vinyl${widget.count.toString()}',
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.network(streamSnapshot
                                          .data!.docs[index]['image']),
                                    ),
                                    ListTile(
                                      title: Text(
                                        streamSnapshot.data!.docs[index]
                                                ['name'] +
                                            ' - ' +
                                            streamSnapshot.data!.docs[index]
                                                ['year'],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                          streamSnapshot.data!.docs[index]
                                              ['author'],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15)),
                                    ),
                                    ListTile(
                                      title: Text(
                                        AppLocalization.of(context)!
                                            .description,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                          streamSnapshot.data!.docs[index]
                                              ['description'],
                                          style:
                                              TextStyle(color: Colors.white)),
                                      trailing: Text(
                                        streamSnapshot.data!.docs[index]
                                                ['cost'] +
                                            '\$',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Column();
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
        ));
  }
}
