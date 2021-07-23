import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/model/element_vinyl_record.dart';

class VinylRecordRepository{
  Future<String> makeVinylRecord(VinylRecord vinylRecord) async {
    if(true){
      await FirebaseFirestore.instance
          .collection("vinyl_record")
          .add({
        'name': vinylRecord.name,
        'author': vinylRecord.author,
        'year': vinylRecord.year,
        'description': vinylRecord.description,
        'cost':vinylRecord.cost,
        'image':vinylRecord.image
      });
      print('good');
      return "Vinyl record made";
    }else {
      return "Please enter title and text";
    }
  }
}