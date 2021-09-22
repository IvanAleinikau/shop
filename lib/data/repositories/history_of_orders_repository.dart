import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class HistoryOfOrdersRepository{
  final _collection = FirebaseFirestore.instance.collection('purchase_history');
  late List<Purchase> list = [];

  Future<void> makePurchaseHistory(List<Purchase> list) async {
    for(int i = 0; i<list.length; i++){
      _collection.add(
        {
          'user': list[i].user,
          'is_active': list[i].isActive,
          'name': list[i].vinylRecord.name,
          'author': list[i].vinylRecord.author,
          'year': list[i].vinylRecord.year,
          'description': list[i].vinylRecord.description,
          'cost': list[i].vinylRecord.cost,
          'image': list[i].vinylRecord.image,
          'count': list[i].count,
        },
      );
    }
  }

  Future<List<Purchase>> fetchPurchase() async {
    list = [];
    final collection = await _collection.get();
    collection.docs.forEach(
          (doc) {
        Purchase purchase = Purchase(
          user: doc['user'],
          isActive: doc['is_active'],
          vinylRecord: VinylRecord(
            name: doc['name'],
            author: doc['author'],
            year: doc['year'],
            description: doc['description'],
            cost: doc['cost'],
            image: doc['image'],
          ),
          count: doc['count'],
        );
        list.add(purchase);
      },
    );
    return list;
  }
}