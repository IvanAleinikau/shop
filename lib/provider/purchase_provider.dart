import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/model/element_purchase.dart';

class PurchaseRepository {
  Future<String> makePurchase(Purchase purchase) async {
    await FirebaseFirestore.instance.collection('purchase').add({
      'user': purchase.user,
      'is_active':purchase.isActive,
      'name': purchase.vinylRecord.name,
      'author': purchase.vinylRecord.author,
      'year': purchase.vinylRecord.year,
      'description': purchase.vinylRecord.description,
      'cost':purchase.vinylRecord.cost,
      'image':purchase.vinylRecord.image
    });
    return 'Purchase made';
  }
}
