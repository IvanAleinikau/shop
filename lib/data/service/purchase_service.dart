import 'package:get_it/get_it.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/data/repositories/purchase_repository.dart';

class PurchaseService{
  final repository = GetIt.instance<PurchaseRepository>();

  Future<String> makePurchase(Purchase purchase) async{
    return await repository.makePurchase(purchase);
  }

  Future<List<Purchase>> fetchPurchase() async{
    return await repository.fetchPurchase();
  }
}