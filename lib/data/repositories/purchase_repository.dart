import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class PurchaseRepository {
  late List<Purchase> list = [];

  Future<String> makePurchase(Purchase purchase) async {
    await FirebaseFirestore.instance.collection('purchase').add(
      {
        'user': purchase.user,
        'is_active': purchase.isActive,
        'name': purchase.vinylRecord.name,
        'author': purchase.vinylRecord.author,
        'year': purchase.vinylRecord.year,
        'description': purchase.vinylRecord.description,
        'cost': purchase.vinylRecord.cost,
        'image': purchase.vinylRecord.image
      },
    );
    return 'Purchase made';
  }

  Future<List<Purchase>> fetchPurchase() async {
    await FirebaseFirestore.instance.collection('purchase').get().then(
      (QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
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
            );
            list.add(purchase);
          },
        );
      },
    );
    return list;
  }
}
