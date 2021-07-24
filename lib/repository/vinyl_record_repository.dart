import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/model/element_vinyl_record.dart';

class VinylRecordRepository{
  Future<String> makeVinylRecord(VinylRecord vinylRecord) async {
    if(vinylRecord.name.isNotEmpty && int.parse(vinylRecord.cost)>0 && int.parse(vinylRecord.image)>0 && int.parse(vinylRecord.image)<=9  ){
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
      return "Vinyl record made";
    }else {
      return "Please enter valid data";
    }
  }
}