import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class PurchaseRepository {
  late List<Purchase> list = [];
  late List<String> keys = [];
  final _collection = FirebaseFirestore.instance.collection('purchase');

  Future<String> makePurchase(Purchase purchase) async {
    _collection.add(
      {
        'user': purchase.user,
        'is_active': purchase.isActive,
        'name': purchase.vinylRecord.name,
        'author': purchase.vinylRecord.author,
        'year': purchase.vinylRecord.year,
        'description': purchase.vinylRecord.description,
        'cost': purchase.vinylRecord.cost,
        'image': purchase.vinylRecord.image,
        'count': purchase.count,
      },
    );
    return 'Purchase made';
  }

  Future<List<Purchase>> fetchPurchase() async {
    list = [];
    keys = [];
    final collection = await _collection.get();
    collection.docs.forEach((doc) {
      keys.add(doc.id);
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
    });
    return list;
  }

  Future<void> incrementCount(int count, int index) async {
    await _collection.doc(keys[index].toString()).update({'count': count + 1});
    await fetchPurchase();
  }

  Future<void> decrementCount(int count, int index) async {
    await _collection.doc(keys[index].toString()).update({'count': count - 1});
    await fetchPurchase();
  }

  Future<void> delete(int index) async {
    await _collection.doc(keys[index].toString()).delete();
    await fetchPurchase();
  }
}
