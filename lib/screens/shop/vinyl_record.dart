import 'package:flutter/material.dart';
import 'package:shop/model/element_vinyl_record.dart';

class ObjVinylRecord extends StatefulWidget {
  final VinylRecord vinylRecord;
  final int index;

  ObjVinylRecord(this.vinylRecord, this.index);

  @override
  _ObjVinylRecordState createState() => _ObjVinylRecordState();
}

class _ObjVinylRecordState extends State<ObjVinylRecord> {
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
            title: Text('Description',
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

        },
        child: const Icon(Icons.shopping_cart),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
