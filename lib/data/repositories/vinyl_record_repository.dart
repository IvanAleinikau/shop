import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class VinylRecordRepository {
  late List<VinylRecord> list = [];

  Future<String> makeVinylRecord(VinylRecord vinylRecord) async {
    if (vinylRecord.name.isNotEmpty && int.parse(vinylRecord.cost) > 0) {
      await FirebaseFirestore.instance.collection('vinyl_record').add({
        'name': vinylRecord.name,
        'author': vinylRecord.author,
        'year': vinylRecord.year,
        'description': vinylRecord.description,
        'cost': vinylRecord.cost,
        'image': vinylRecord.image
      });
      return 'Vinyl record made';
    } else {
      return 'Please enter valid data';
    }
  }

  Future<List<VinylRecord>> fetchVinylRecord() async {
    await FirebaseFirestore.instance
        .collection('vinyl_record')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        VinylRecord vinylRecord = VinylRecord(
          name: doc['name'],
          author: doc['author'],
          year: doc['year'],
          description: doc['description'],
          cost: doc['cost'],
          image: doc['image'],
        );
        list.add(vinylRecord);
      });
    });
    return list;
  }
}
