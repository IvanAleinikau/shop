import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_purchase.dart';
import 'package:shop/model/element_vinyl_record.dart';
import 'package:shop/provider/purchase_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ObjVinylRecord extends StatefulWidget {
  final String name;

  ObjVinylRecord(this.name);

  @override
  _ObjVinylRecordState createState() => _ObjVinylRecordState();
}

class _ObjVinylRecordState extends State<ObjVinylRecord> {
  String? user = FirebaseAuth.instance.currentUser!.email;

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
            return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return widget.name == streamSnapshot.data!.docs[index]['name']
                      ? Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                              child: Image(
                                image: AssetImage(
                                    'asset/vinyl_record/${streamSnapshot.data!.docs[index]['image']}.png'),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                streamSnapshot.data!.docs[index]['name'] +
                                    ' - ' +
                                    streamSnapshot.data!.docs[index]['year'],
                                style: TextStyle(fontSize: 25),
                              ),
                              subtitle: Text(
                                  streamSnapshot.data!.docs[index]['author']),
                            ),
                            ListTile(
                              title: Text(
                                AppLocalization.of(context)!.description,
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Text(streamSnapshot.data!.docs[index]
                                  ['description']),
                              trailing: Text(
                                streamSnapshot.data!.docs[index]['cost'] + '\$',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 50,
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {
                                    VinylRecord vinylRecord = VinylRecord(
                                        streamSnapshot.data!.docs[index]['name'],
                                        streamSnapshot.data!.docs[index]
                                        ['author'],
                                        streamSnapshot.data!.docs[index]['year'],
                                        streamSnapshot.data!.docs[index]
                                        ['description'],
                                        streamSnapshot.data!.docs[index]['cost'],
                                        streamSnapshot.data!.docs[index]
                                        ['image']);
                                    PurchaseRepository()
                                        .makePurchase(new Purchase(
                                        user!, true, vinylRecord))
                                        .then((value) {
                                      if (value == "Purchase made") {
                                        Navigator.of(context).pop();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                            SnackBar(content: Text(value)));
                                      }
                                    });
                                  },
                                  child: Text(AppLocalization.of(context)!.buy),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.deepPurpleAccent),
                                    textStyle: MaterialStateProperty.all(
                                      TextStyle(
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column();
                });
          }),
    );
  }
}
