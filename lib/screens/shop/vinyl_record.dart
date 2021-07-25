import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/model/element_purchase.dart';
import 'package:shop/model/element_vinyl_record.dart';
import 'package:shop/repository/purchase_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ObjVinylRecord extends StatefulWidget {
  final VinylRecord vinylRecord;
  final int index;

  ObjVinylRecord(this.vinylRecord, this.index);

  @override
  _ObjVinylRecordState createState() => _ObjVinylRecordState();
}

class _ObjVinylRecordState extends State<ObjVinylRecord> {
  String? user = FirebaseAuth.instance.currentUser!.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.vinylRecord.name}'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: Image(
              image: AssetImage(
                  'asset/vinyl_record/${widget.vinylRecord.image}.png'),
            ),
          ),
          ListTile(
            title: Text(
              widget.vinylRecord.name +' - '+ widget.vinylRecord.year,
              style: TextStyle(fontSize: 25),
            ),
            subtitle:
            Text(widget.vinylRecord.author),
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.description,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(widget.vinylRecord.description),
            trailing: Text(widget.vinylRecord.cost+'\$',
              style: TextStyle(fontSize: 20),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PurchaseRepository().makePurchase(new Purchase( user!,true,widget.vinylRecord)).then((value) {
            if(value=="Purchase made"){
              Navigator.of(context).pop();
            }else{
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(value)));
            }
          });
        },
        child: const Icon(Icons.shopping_cart),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
